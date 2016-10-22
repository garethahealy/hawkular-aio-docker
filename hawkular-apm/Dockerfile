FROM docker.io/jboss/hawkular-apm-server:latest
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-apm (docker.io/jboss/hawkular-apm-server:latest)" \
    Vendor="com.garethahealy" \
    Version="0.10" \
    License="Apache License, Version 2.0"

# Update to latest packages
USER root
RUN yum update -y && \
    yum clean all

# switch back to jboss
USER 1000
