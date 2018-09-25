#!/bin/bash

echo "make sure you've set up the"

while true; do
    read -p "have you set up the SRI hashes?" yn
    case $yn in
        [Yy]* ) scp ./build/* bingo:/var/www/pat.sh/html/; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done





