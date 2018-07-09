FROM docker.io/openshift/origin-metrics-cassandra:v3.11
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-cassandra (docker.io/openshift/origin-metrics-cassandra:v3.11)" \
    Vendor="com.garethahealy" \
    Version="3.11" \
    License="Apache License, Version 2.0"

# Update to latest packages
USER root
RUN yum update -y && \
    yum clean all

# switch back to cassendra
USER 313
