// Code generated by Thrift Compiler (0.19.0). DO NOT EDIT.

package log_service

import (
	"bytes"
	"context"
	"errors"
	"fmt"
	"time"
	thrift "github.com/apache/thrift/lib/go/thrift"
	"strings"
	"regexp"
)

// (needed to ensure safety because of naive import list construction.)
var _ = thrift.ZERO
var _ = fmt.Printf
var _ = errors.New
var _ = context.Background
var _ = time.Now
var _ = bytes.Equal
// (needed by validator.)
var _ = strings.Contains
var _ = regexp.MatchString

type LogService interface {
  // Parameters:
  //  - FilePath
  ReadLogFile(ctx context.Context, filePath string) (_r string, _err error)
}

type LogServiceClient struct {
  c thrift.TClient
  meta thrift.ResponseMeta
}

func NewLogServiceClientFactory(t thrift.TTransport, f thrift.TProtocolFactory) *LogServiceClient {
  return &LogServiceClient{
    c: thrift.NewTStandardClient(f.GetProtocol(t), f.GetProtocol(t)),
  }
}

func NewLogServiceClientProtocol(t thrift.TTransport, iprot thrift.TProtocol, oprot thrift.TProtocol) *LogServiceClient {
  return &LogServiceClient{
    c: thrift.NewTStandardClient(iprot, oprot),
  }
}

func NewLogServiceClient(c thrift.TClient) *LogServiceClient {
  return &LogServiceClient{
    c: c,
  }
}

func (p *LogServiceClient) Client_() thrift.TClient {
  return p.c
}

func (p *LogServiceClient) LastResponseMeta_() thrift.ResponseMeta {
  return p.meta
}

func (p *LogServiceClient) SetLastResponseMeta_(meta thrift.ResponseMeta) {
  p.meta = meta
}

// Parameters:
//  - FilePath
func (p *LogServiceClient) ReadLogFile(ctx context.Context, filePath string) (_r string, _err error) {
  var _args0 LogServiceReadLogFileArgs
  _args0.FilePath = filePath
  var _result2 LogServiceReadLogFileResult
  var _meta1 thrift.ResponseMeta
  _meta1, _err = p.Client_().Call(ctx, "ReadLogFile", &_args0, &_result2)
  p.SetLastResponseMeta_(_meta1)
  if _err != nil {
    return
  }
  return _result2.GetSuccess(), nil
}

type LogServiceProcessor struct {
  processorMap map[string]thrift.TProcessorFunction
  handler LogService
}

func (p *LogServiceProcessor) AddToProcessorMap(key string, processor thrift.TProcessorFunction) {
  p.processorMap[key] = processor
}

func (p *LogServiceProcessor) GetProcessorFunction(key string) (processor thrift.TProcessorFunction, ok bool) {
  processor, ok = p.processorMap[key]
  return processor, ok
}

func (p *LogServiceProcessor) ProcessorMap() map[string]thrift.TProcessorFunction {
  return p.processorMap
}

func NewLogServiceProcessor(handler LogService) *LogServiceProcessor {

  self3 := &LogServiceProcessor{handler:handler, processorMap:make(map[string]thrift.TProcessorFunction)}
  self3.processorMap["ReadLogFile"] = &logServiceProcessorReadLogFile{handler:handler}
return self3
}

func (p *LogServiceProcessor) Process(ctx context.Context, iprot, oprot thrift.TProtocol) (success bool, err thrift.TException) {
  name, _, seqId, err2 := iprot.ReadMessageBegin(ctx)
  if err2 != nil { return false, thrift.WrapTException(err2) }
  if processor, ok := p.GetProcessorFunction(name); ok {
    return processor.Process(ctx, seqId, iprot, oprot)
  }
  iprot.Skip(ctx, thrift.STRUCT)
  iprot.ReadMessageEnd(ctx)
  x4 := thrift.NewTApplicationException(thrift.UNKNOWN_METHOD, "Unknown function " + name)
  oprot.WriteMessageBegin(ctx, name, thrift.EXCEPTION, seqId)
  x4.Write(ctx, oprot)
  oprot.WriteMessageEnd(ctx)
  oprot.Flush(ctx)
  return false, x4

}

type logServiceProcessorReadLogFile struct {
  handler LogService
}

func (p *logServiceProcessorReadLogFile) Process(ctx context.Context, seqId int32, iprot, oprot thrift.TProtocol) (success bool, err thrift.TException) {
  var _write_err5 error
  args := LogServiceReadLogFileArgs{}
  if err2 := args.Read(ctx, iprot); err2 != nil {
    iprot.ReadMessageEnd(ctx)
    x := thrift.NewTApplicationException(thrift.PROTOCOL_ERROR, err2.Error())
    oprot.WriteMessageBegin(ctx, "ReadLogFile", thrift.EXCEPTION, seqId)
    x.Write(ctx, oprot)
    oprot.WriteMessageEnd(ctx)
    oprot.Flush(ctx)
    return false, thrift.WrapTException(err2)
  }
  iprot.ReadMessageEnd(ctx)

  tickerCancel := func() {}
  // Start a goroutine to do server side connectivity check.
  if thrift.ServerConnectivityCheckInterval > 0 {
    var cancel context.CancelCauseFunc
    ctx, cancel = context.WithCancelCause(ctx)
    defer cancel(nil)
    var tickerCtx context.Context
    tickerCtx, tickerCancel = context.WithCancel(context.Background())
    defer tickerCancel()
    go func(ctx context.Context, cancel context.CancelCauseFunc) {
      ticker := time.NewTicker(thrift.ServerConnectivityCheckInterval)
      defer ticker.Stop()
      for {
        select {
        case <-ctx.Done():
          return
        case <-ticker.C:
          if !iprot.Transport().IsOpen() {
            cancel(thrift.ErrAbandonRequest)
            return
          }
        }
      }
    }(tickerCtx, cancel)
  }

  result := LogServiceReadLogFileResult{}
  if retval, err2 := p.handler.ReadLogFile(ctx, args.FilePath); err2 != nil {
    tickerCancel()
    err = thrift.WrapTException(err2)
    if errors.Is(err2, thrift.ErrAbandonRequest) {
      return false, thrift.WrapTException(err2)
    }
    if errors.Is(err2, context.Canceled) {
      if err := context.Cause(ctx); errors.Is(err, thrift.ErrAbandonRequest) {
        return false, thrift.WrapTException(err)
      }
    }
    _exc6 := thrift.NewTApplicationException(thrift.INTERNAL_ERROR, "Internal error processing ReadLogFile: " + err2.Error())
    if err2 := oprot.WriteMessageBegin(ctx, "ReadLogFile", thrift.EXCEPTION, seqId); err2 != nil {
      _write_err5 = thrift.WrapTException(err2)
    }
    if err2 := _exc6.Write(ctx, oprot); _write_err5 == nil && err2 != nil {
      _write_err5 = thrift.WrapTException(err2)
    }
    if err2 := oprot.WriteMessageEnd(ctx); _write_err5 == nil && err2 != nil {
      _write_err5 = thrift.WrapTException(err2)
    }
    if err2 := oprot.Flush(ctx); _write_err5 == nil && err2 != nil {
      _write_err5 = thrift.WrapTException(err2)
    }
    if _write_err5 != nil {
      return false, thrift.WrapTException(_write_err5)
    }
    return true, err
  } else {
    result.Success = &retval
  }
  tickerCancel()
  if err2 := oprot.WriteMessageBegin(ctx, "ReadLogFile", thrift.REPLY, seqId); err2 != nil {
    _write_err5 = thrift.WrapTException(err2)
  }
  if err2 := result.Write(ctx, oprot); _write_err5 == nil && err2 != nil {
    _write_err5 = thrift.WrapTException(err2)
  }
  if err2 := oprot.WriteMessageEnd(ctx); _write_err5 == nil && err2 != nil {
    _write_err5 = thrift.WrapTException(err2)
  }
  if err2 := oprot.Flush(ctx); _write_err5 == nil && err2 != nil {
    _write_err5 = thrift.WrapTException(err2)
  }
  if _write_err5 != nil {
    return false, thrift.WrapTException(_write_err5)
  }
  return true, err
}


// HELPER FUNCTIONS AND STRUCTURES

// Attributes:
//  - FilePath
type LogServiceReadLogFileArgs struct {
  FilePath string `thrift:"filePath,1" db:"filePath" json:"filePath"`
}

func NewLogServiceReadLogFileArgs() *LogServiceReadLogFileArgs {
  return &LogServiceReadLogFileArgs{}
}


func (p *LogServiceReadLogFileArgs) GetFilePath() string {
  return p.FilePath
}
func (p *LogServiceReadLogFileArgs) Read(ctx context.Context, iprot thrift.TProtocol) error {
  if _, err := iprot.ReadStructBegin(ctx); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
  }


  for {
    _, fieldTypeId, fieldId, err := iprot.ReadFieldBegin(ctx)
    if err != nil {
      return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
    }
    if fieldTypeId == thrift.STOP { break; }
    switch fieldId {
    case 1:
      if fieldTypeId == thrift.STRING {
        if err := p.ReadField1(ctx, iprot); err != nil {
          return err
        }
      } else {
        if err := iprot.Skip(ctx, fieldTypeId); err != nil {
          return err
        }
      }
    default:
      if err := iprot.Skip(ctx, fieldTypeId); err != nil {
        return err
      }
    }
    if err := iprot.ReadFieldEnd(ctx); err != nil {
      return err
    }
  }
  if err := iprot.ReadStructEnd(ctx); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
  }
  return nil
}

func (p *LogServiceReadLogFileArgs)  ReadField1(ctx context.Context, iprot thrift.TProtocol) error {
  if v, err := iprot.ReadString(ctx); err != nil {
  return thrift.PrependError("error reading field 1: ", err)
} else {
  p.FilePath = v
}
  return nil
}

func (p *LogServiceReadLogFileArgs) Write(ctx context.Context, oprot thrift.TProtocol) error {
  if err := oprot.WriteStructBegin(ctx, "ReadLogFile_args"); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err) }
  if p != nil {
    if err := p.writeField1(ctx, oprot); err != nil { return err }
  }
  if err := oprot.WriteFieldStop(ctx); err != nil {
    return thrift.PrependError("write field stop error: ", err) }
  if err := oprot.WriteStructEnd(ctx); err != nil {
    return thrift.PrependError("write struct stop error: ", err) }
  return nil
}

func (p *LogServiceReadLogFileArgs) writeField1(ctx context.Context, oprot thrift.TProtocol) (err error) {
  if err := oprot.WriteFieldBegin(ctx, "filePath", thrift.STRING, 1); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field begin error 1:filePath: ", p), err) }
  if err := oprot.WriteString(ctx, string(p.FilePath)); err != nil {
  return thrift.PrependError(fmt.Sprintf("%T.filePath (1) field write error: ", p), err) }
  if err := oprot.WriteFieldEnd(ctx); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field end error 1:filePath: ", p), err) }
  return err
}

func (p *LogServiceReadLogFileArgs) String() string {
  if p == nil {
    return "<nil>"
  }
  return fmt.Sprintf("LogServiceReadLogFileArgs(%+v)", *p)
}

// Attributes:
//  - Success
type LogServiceReadLogFileResult struct {
  Success *string `thrift:"success,0" db:"success" json:"success,omitempty"`
}

func NewLogServiceReadLogFileResult() *LogServiceReadLogFileResult {
  return &LogServiceReadLogFileResult{}
}

var LogServiceReadLogFileResult_Success_DEFAULT string
func (p *LogServiceReadLogFileResult) GetSuccess() string {
  if !p.IsSetSuccess() {
    return LogServiceReadLogFileResult_Success_DEFAULT
  }
return *p.Success
}
func (p *LogServiceReadLogFileResult) IsSetSuccess() bool {
  return p.Success != nil
}

func (p *LogServiceReadLogFileResult) Read(ctx context.Context, iprot thrift.TProtocol) error {
  if _, err := iprot.ReadStructBegin(ctx); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
  }


  for {
    _, fieldTypeId, fieldId, err := iprot.ReadFieldBegin(ctx)
    if err != nil {
      return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
    }
    if fieldTypeId == thrift.STOP { break; }
    switch fieldId {
    case 0:
      if fieldTypeId == thrift.STRING {
        if err := p.ReadField0(ctx, iprot); err != nil {
          return err
        }
      } else {
        if err := iprot.Skip(ctx, fieldTypeId); err != nil {
          return err
        }
      }
    default:
      if err := iprot.Skip(ctx, fieldTypeId); err != nil {
        return err
      }
    }
    if err := iprot.ReadFieldEnd(ctx); err != nil {
      return err
    }
  }
  if err := iprot.ReadStructEnd(ctx); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
  }
  return nil
}

func (p *LogServiceReadLogFileResult)  ReadField0(ctx context.Context, iprot thrift.TProtocol) error {
  if v, err := iprot.ReadString(ctx); err != nil {
  return thrift.PrependError("error reading field 0: ", err)
} else {
  p.Success = &v
}
  return nil
}

func (p *LogServiceReadLogFileResult) Write(ctx context.Context, oprot thrift.TProtocol) error {
  if err := oprot.WriteStructBegin(ctx, "ReadLogFile_result"); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err) }
  if p != nil {
    if err := p.writeField0(ctx, oprot); err != nil { return err }
  }
  if err := oprot.WriteFieldStop(ctx); err != nil {
    return thrift.PrependError("write field stop error: ", err) }
  if err := oprot.WriteStructEnd(ctx); err != nil {
    return thrift.PrependError("write struct stop error: ", err) }
  return nil
}

func (p *LogServiceReadLogFileResult) writeField0(ctx context.Context, oprot thrift.TProtocol) (err error) {
  if p.IsSetSuccess() {
    if err := oprot.WriteFieldBegin(ctx, "success", thrift.STRING, 0); err != nil {
      return thrift.PrependError(fmt.Sprintf("%T write field begin error 0:success: ", p), err) }
    if err := oprot.WriteString(ctx, string(*p.Success)); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T.success (0) field write error: ", p), err) }
    if err := oprot.WriteFieldEnd(ctx); err != nil {
      return thrift.PrependError(fmt.Sprintf("%T write field end error 0:success: ", p), err) }
  }
  return err
}

func (p *LogServiceReadLogFileResult) String() string {
  if p == nil {
    return "<nil>"
  }
  return fmt.Sprintf("LogServiceReadLogFileResult(%+v)", *p)
}

