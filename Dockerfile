FROM centos:latest
MAINTAINER Gustaf Zetterlund <gustaf.zetterlund@gmail.com>

RUN yum update -y && \
    yum install -y gcc libcurl-devel make && \
    yum clean all && \
    curl https://svwh.dl.sourceforge.net/project/esniper/esniper/2.35.0/esniper-2-35-0.tgz -o /tmp/esniper.tgz && \
    cd /tmp && tar zxf /tmp/esniper.tgz && cd /tmp/esniper-2-35-0; ./configure; make; make install && \
    mkdir -p /esniper/logs

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT "./entrypoint.sh"
