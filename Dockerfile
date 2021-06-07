
# Pull base image.
FROM ubuntu:latest

# Install Node.js
RUN apt-get -y update
#RUN apt-get install -y curl
#RUN curl --silent --location https://deb.nodesource.com/setup_16.x | sudo bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src; npm install

# Binds to port 8080
EXPOSE  8080

#  Defines your runtime(define default command)
CMD ["node", "/src/index.js"]
