#!/bin/sh

set -xe
clang -Wall -Wextra -pedantic main.c -o out/main
rm -rf out/*.dSYM