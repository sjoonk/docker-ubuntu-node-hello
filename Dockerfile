# DOCKER-VERSION 0.7.2

FROM ubuntu

# Install Node.js
# https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#wiki-ubuntu-mint-elementary-os
RUN sudo apt-get update
RUN sudo apt-get install -y python-software-properties # python g++ make
RUN sudo add-apt-repository ppa:chris-lea/node.js
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs

RUN echo "export PATH=$PATH:/opt/node/bin" >> ~/.bashrc
RUN . ~/.bashrc

# Bundle project source
ADD . /opt/src

## Install project dependencies
RUN cd /opt/src; npm install

EXPOSE  8080

# Run the node server
CMD ["node", "/opt/src/app/index.js"]