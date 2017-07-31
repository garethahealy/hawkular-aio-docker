FROM docker.io/openshift/origin-metrics-cassandra:v1.5.0
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-cassandra (docker.io/openshift/origin-metrics-cassandra:v1.5.0)" \
    Vendor="com.garethahealy" \
    Version="1.5.0" \
    License="Apache License, Version 2.0"

# Update to latest packages
USER root
RUN yum update -y && \
    yum clean all

# switch back to cassendra
USER 313
