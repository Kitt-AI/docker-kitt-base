#
# tutorial: https://docs.docker.com/userguide/dockerimages/
# 
# ~/bin/docker_init.sh # fireup docker with iterm2 
# ### source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh
#
# docker build -t kitt/docker-kitt-base .
# docker run -t -i kitt/docker-kitt-base /bin/bash

FROM ubuntu:14.04
MAINTAINER Xuchen Yao <xuchen@kitt.ai>

ENV DEBIAN_FRONTEND=noninteractive

ADD pip_install.sh pip_install.sh
RUN bash pip_install.sh

ADD build_scikit.sh build_scikit.sh
RUN bash build_scikit.sh

ADD build_simstring.sh build_simstring.sh
RUN bash build_simstring.sh

ADD build_nltk_wordnet.sh build_nltk_wordnet.sh
RUN bash build_nltk_wordnet.sh

ADD cleanup.sh cleanup.sh
RUN bash cleanup.sh

# To make it easier to attach a volume for interactive use
RUN mkdir -p /mnt/workdir
WORKDIR /mnt/workdir


