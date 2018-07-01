#!/bin/bash

./build.py && rm -vf ./build/.*.swp && scp ./build/* bingo:/var/www/pat.sh/html/
