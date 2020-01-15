#!/usr/bin/env bash

find / -iname "*.so" \
       -user renan  \
       -type f       \
       -size +1M     \
       -exec ls {}   \;
