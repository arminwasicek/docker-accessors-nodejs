FROM node:11.1.0-slim

MAINTAINER Armin Wasicek (armin.wasicek@avast.com)

RUN npm install @terraswarm/accessors && \
    echo 'alias nodeHostInvoke="node /node_modules/@terraswarm/accessors/hosts/node/nodeHostInvoke.js"' >> ~/.bashrc && \
    echo 'alias nodeHostShell="node /node_modules/@terraswarm/accessors/hosts/node/nodeHostShell.js"' >> ~/.bashrc

RUN apt-get install -y vi

COPY ./accessor.js /root/accessor.js
