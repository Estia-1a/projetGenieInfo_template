/*
* DO NOT EDIT THIS FILE
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "argsparse.h"

/* Flag set by ‘--debug. */
static int debug_mode;

static char command[MAX_LENGTH_COMMAND] ;
static char* filenames[MAX_FILE_COUNT] ;
static char* arguments[MAX_ARGUMENT_COUNT] ;

static int file_count = 0 ;
static int argument_count = 0 ;

int parse_arguments( int argc, char **argv, char acommand[MAX_LENGTH_COMMAND] ) {
  int c ;
  static struct option long_options[] =
    {
      {"debug", no_argument,     &debug_mode, 1},
      {"brief", no_argument,     &debug_mode, 0},
      {"file",  required_argument, 0, 'f'},
      {"command",required_argument, 0, 'c'},
      {"type",  required_argument, 0, 't'},
      {0, 0, 0, 0}
    };

  while (1) {
      int option_index = 0;
      c = getopt_long (argc, argv, "f:c:", long_options, &option_index);
      /* Detect the end of the options. */
      if (c == -1) {
        break;
      }
      switch (c) {
        case 0 : break ;
        case 'f':
          filenames[ file_count ] = malloc( strlen( optarg ) + 1 ) ;
          strncpy( filenames[ file_count ], optarg, strlen( optarg ) ) ;
          file_count = file_count + 1 ;
          break;
        case 'c':
          strncpy( acommand, optarg, MAX_LENGTH_COMMAND ) ;
          strncpy( command, acommand, MAX_LENGTH_COMMAND ) ;
          break;
        case 't':

          break;
        case '?':
          /* getopt_long already printed an error message. */
          break;
        default:
          printf ("option %s unhandled", long_options[option_index].name);
          abort ();
        }
    }
    /* Print any remaining command line arguments (not options). */
    if (optind < argc) {
        while (optind < argc) {
          arguments[ argument_count ] = malloc( strlen( argv[optind] ) + 1 ) ;
          strncpy( arguments[ argument_count ], argv[optind], strlen( argv[optind] ) ) ;
          argument_count = argument_count + 1 ;
          optind = optind + 1 ;
        }
      }
}

void check_file() {
    if ( file_count < 1 ) {
        printf("Missing file\n" );
        abort();
    } 
}

void check_debug_mode() {
    if (debug_mode) {
        printf("debug flag is set");
        int file_index ;
        for ( file_index = 0 ; file_index < file_count ; file_index++ ) {
            printf( "file %d/%d: %s\n", file_index + 1 , file_count, filenames[ file_index ] );
        }
        int argument_index ;
        for ( argument_index = 0 ; argument_index < argument_count ; argument_index++ ) {
            printf( "arguments %d/%d: %s\n", argument_index + 1 , argument_count, arguments[ argument_index ] );
        }
        printf( "option: %s\n", command );
  }
}