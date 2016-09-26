# Basic docker image for POGOServer
# Usage:
#   docker build -t pogoserver .
#   docker run -d --rm -P pogoserver -v .:/POGOserver/ -p 3000:3000 


FROM mhart/alpine-node:latest

# Working directory for the application
RUN mkdir -p /POGOserver
WORKDIR /POGOserver

# Set default options when container is run without any command line arguments
# CMD ["-h"]

# Install required packages
RUN apk add --no-cache \
 build-base \
 ca-certificates \
 nodejs \
 git
RUN apk add --no-cache \
 python \
 autoconf \
 automake \
 libtool \
 curl \
 make \
 unzip \
 protobuf-dev
# g++ \#already inside build-base
#supervisor# I dont use supervisord, i can't test it...
 
# Run supervisord
# I dont use supervisord, i can't test it...
# RUN cp /POGOserver/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# CMD ["/usr/bin/supervisord"]

# Get protobuf
RUN cd / \
&& git clone --recursive https://github.com/google/protobuf.git \
&& cd /protobuf \
&& ./autogen.sh \
&& ./configure \
&& make \
&& make install

# Install the dependencies
COPY package.json /POGOserver/
RUN npm cache clean && npm install

# Logs
# RUN chmod +x pogoserver.sh
# CMD ["/POGOserver/pogoserver.sh"]

# Clean-up unused package
# RUN apk del build-base git nodejs protobuf python make automake autoconfig autoconf pkgconf

# Copy POGOServer to container
COPY . /POGOserver/

COPY docker-entrypoint.sh /POGOserver/

EXPOSE 3000
CMD bash -C '/POGOserver/docker-entrypoint.sh';'bash'
