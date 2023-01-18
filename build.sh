#!/bin/bash

FILENAME=$1

flex -o brutus.lex.c $FILENAME
gcc -o brutus brutus.lex.c -lfl