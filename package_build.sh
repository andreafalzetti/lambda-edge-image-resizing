#/bin/bash

rm -f dist/origin-response-function.zip dist/viewer-request-function.zip

# Package the 'Origin-Response' function
mkdir -p dist && cd lambda/origin-response-function && zip -FS -q -r ../../dist/origin-response-function.zip * &&cd ../..

# Package the 'Viewer-Request' function
mkdir -p dist && cd lambda/viewer-request-function && zip -FS -q -r ../../dist/viewer-request-function.zip * && cd ../..
