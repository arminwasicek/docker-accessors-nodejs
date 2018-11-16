# Dockerized nodejs host 

This repo contains the scripts to generate a dockerized nodejs host for [accessors.org](https://ptolemy.berkeley.edu/accessors/).

## Build & test using make

`make build` ... Downloads the most recent nodejs host from the acessor svn repo and build the docker container

`make test` ... Runs some rudimentary test swarmlets from the accessor repo

## Use nodejs host container

The container implements shortcuts to the two most common commands on the nodejs host:

* nodeHostInvoke: run a swarmlet. Note that the swarmlet code needs to be in the container 
* nodeHostShell: call an interactive nodejs shell with the ac

