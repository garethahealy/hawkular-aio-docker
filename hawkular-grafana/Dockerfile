FROM docker.io/hawkular/hawkular-grafana-datasource:1.1.2
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-grafana (docker.io/hawkular/hawkular-grafana-datasource:1.1.2)" \
    Vendor="com.garethahealy" \
    Version="1.1.2" \
    License="Apache License, Version 2.0"

# Update to latest packages
USER root
RUN yum update -y && \
    yum clean all
