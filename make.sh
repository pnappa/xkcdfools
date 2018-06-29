#!/bin/bash

./build.py && rm -vf ./build/.*.swp && scp ./build/* bingo:/usr/local/www
