#!/bin/sh -xv
REPO_HOME=/home/rstudio
docker run \
    -v "$(pwd):${REPO_HOME}" \
    -e REPO_HOME=${REPO_HOME} \
    -e HOME=${REPO_HOME} \
    -e DISABLE_AUTH=true \
    -p 8787 \
    rocker/verse:4.2 \
    ${REPO_HOME}/script/build.sh
