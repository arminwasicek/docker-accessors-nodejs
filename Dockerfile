FROM node:11.1.0-slim

MAINTAINER Armin Wasicek (armin.wasicek@avast.com)

ADD accessors/web /root/node_modules

COPY ./nodeHostInvoke /usr/local/bin/nodeHostInvoke
COPY ./nodeHostShell /usr/local/bin/nodeHostShell
COPY ./accessor.js /root/accessor.js

