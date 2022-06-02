#ifndef CONFIGP_H
#define CONFIGP_H

#include <stdio.h>

#define MAX_FILE_COUNT 10
#define MAX_LENGTH_COMMAND 25
#define MAX_ARGUMENT_COUNT 5

typedef struct _config {
    int debug_mode ;
    char command[MAX_LENGTH_COMMAND] ;
    char* filenames[MAX_FILE_COUNT] ;
    char* arguments[MAX_ARGUMENT_COUNT] ;
} Config ;

#endif