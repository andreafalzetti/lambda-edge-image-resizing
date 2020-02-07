#/bin/bash

docker build --tag amazonlinux:nodejs .

# Install the sharp and querystring module dependencies and compile the 'Origin-Response' function
docker run --rm --volume ${PWD}/lambda/origin-response-function:/build amazonlinux:nodejs /bin/bash -c "source ~/.bashrc; npm init -f -y; npm install --arch=x64 --platform=linux --target=12.13.1 sharp --save; npm install querystring --save; npm install --only=prod"

# Install the querystring module dependencies and compile the 'Viewer-Request' function
docker run --rm --volume ${PWD}/lambda/viewer-request-function:/build amazonlinux:nodejs /bin/bash -c "source ~/.bashrc; npm init -f -y; npm install querystring --save; npm install --only=prod"
