FROM docker.io/hawkular/hawkular-services:0.40.1.Final
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-services (docker.io/hawkular/hawkular-services:0.40.1.Final)" \
    Vendor="com.garethahealy" \
    Version="0.40.1.Final" \
    License="Apache License, Version 2.0"

# Update to latest packages
USER root
RUN yum update -y && \
    rm -rf /var/cache/yum && \
    yum -y clean all

# switch back to jboss
USER 1000
