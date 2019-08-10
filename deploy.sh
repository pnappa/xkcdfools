#!/bin/bash

echo 'youll wanna do SRI hashes first. e.g. echo "sha384-"$(openssl dgst -sha384 -binary patcli_all.js | openssl base64 -A) for each resource, and include that as a field called integrity in the html'

while true; do
    read -p "have you set up the SRI hashes?" yn
    case $yn in
        [Yy]* ) scp ./build/* bingo:/var/www/pat.sh/html/; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done





