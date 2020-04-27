FROM ubuntu:xenial

LABEL Version=0.0.1
LABEL MAINTAINER="Wes Oler <wes-o@users.noreply.github.com>"

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV DEBIAN_FRONTEND noninteractive
ENV DIR /latex

RUN mkdir $DIR
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && echo "\nmain_memory = 12000000" >> /etc/texmf/texmf.d/00debian.cnf \
    && echo "\nextra_mem_bot = 12000000" >> /etc/texmf/texmf.d/00debian.cnf \
    && echo "\nfont_mem_size = 12000000" >> /etc/texmf/texmf.d/00debian.cnf \
    && echo "\npool_size = 12000000" >> /etc/texmf/texmf.d/00debian.cnf \
    && echo "\nbuf_size = 12000000" >> /etc/texmf/texmf.d/00debian.cnf \
    && update-texmf \
    && texhash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME $DIR
WORKDIR $DIR
