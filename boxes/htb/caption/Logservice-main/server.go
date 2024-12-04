package main

import (
    "context"
    "fmt"
    "log"
    "os"
    "bufio"
    "regexp"
    "time"
    "github.com/apache/thrift/lib/go/thrift"
    "os/exec"
    "log_service"
)

type LogServiceHandler struct{}

func (l *LogServiceHandler) ReadLogFile(ctx context.Context, filePath string) (r string, err error) {
    file, err := os.Open(filePath)
    if err != nil {
        return "", fmt.Errorf("error opening log file: %v", err)
    }
    defer file.Close()
    ipRegex := regexp.MustCompile(`\b(?:\d{1,3}\.){3}\d{1,3}\b`)
    userAgentRegex := regexp.MustCompile(`"user-agent":"([^"]+)"`)
    outputFile, err := os.Create("output.log")
    if err != nil {
        fmt.Println("Error creating output file:", err)
        return
    }
    defer outputFile.Close()
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        line := scanner.Text()
        ip := ipRegex.FindString(line)
        userAgentMatch := userAgentRegex.FindStringSubmatch(line)
        var userAgent string
        if len(userAgentMatch) > 1 {
            userAgent = userAgentMatch[1]
        }
        timestamp := time.Now().Format(time.RFC3339)
        logs := fmt.Sprintf("echo 'IP Address: %s, User-Agent: %s, Timestamp: %s' >> output.log", ip, userAgent, timestamp)
        exec.Command{"/bin/sh", "-c", logs}
    }
    return "Log file processed",nil
}

func main() {
    handler := &LogServiceHandler{}
    processor := log_service.NewLogServiceProcessor(handler)
    transport, err := thrift.NewTServerSocket(":9090")
    if err != nil {
        log.Fatalf("Error creating transport: %v", err)
    }

    server := thrift.NewTSimpleServer4(processor, transport, thrift.NewTTransportFactory(), thrift.NewTBinaryProtocolFactoryDefault())
    log.Println("Starting the server...")
    if err := server.Serve(); err != nil {
        log.Fatalf("Error occurred while serving: %v", err)
    }
}
