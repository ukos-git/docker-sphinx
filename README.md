# docker-sphinx
A custom docker container for building sphinx repositories

# usage

Link the directory with sphinx Makefile (make html must be present) to
`/var/sphinx`. The Entrypoint will execute `make` and the default command is
`html` which builds the html files.

# docker hub

This repository is automatically built on [docker hub](https://hub.docker.com/r/ukos/sphinx)
