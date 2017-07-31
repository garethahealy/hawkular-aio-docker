FROM docker.io/hawkular/hawkular-services:0.38.0.Final
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-services (docker.io/hawkular/hawkular-services:0.38.0.Final)" \
    Vendor="com.garethahealy" \
    Version="0.38.0" \
    License="Apache License, Version 2.0"

# Update to latest packages
USER root
RUN yum update -y && \
    yum clean all

# switch back to jboss
USER 1000
