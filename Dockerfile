## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:latest

## Declares build arguments
ARG NB_USER
ARG NB_UID

## Copies your repo files into the Docker Container
USER root
COPY . ${HOME}
## Enable this to copy files from the binder subdirectory
## to the home, overriding any existing files.
## Useful to create a setup on binder that is different from a
## clone of your repository
## COPY binder ${HOME}
RUN chown -R ${NB_USER} ${HOME}

## Install a new version of python 
RUN apt-get update && \
    apt-get -y install python3-venv python3-dev && \
    apt-get purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*



RUN install2.r -e --repo http://cran.wustl.edu/ lme4

## Become normal user again
USER ${NB_USER}

RUN python3 -m venv ${VENV_DIR} && \
     # Explicitly install a new enough version of pip
     pip3 install pip==9.0.1 && \
     pip3 install --no-cache-dir \
          jupyter-rsession-proxy 

## Run an install.R script, if it exists.
# RUN if [ -f install.R ]; then R --quiet -f install.R; fi