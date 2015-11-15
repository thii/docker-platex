FROM ubuntu:trusty
MAINTAINER Doan Truong Thi
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get -qy install texlive
RUN apt-get -qy install texlive-lang-cjk
RUN apt-get -qy install dvipsk-ja
RUN apt-get -qy install texlive-fonts-recommended texlive-fonts-extra

# Add useful command for building PDF directly from pLaTeX2e source file
ADD pdfplatex /usr/bin/pdfplatex
RUN chmod +x /usr/bin/pdfplatex

# Build command
ADD build /usr/bin/build
RUN chmod +x /usr/bin/build

VOLUME /latex
WORKDIR /latex
