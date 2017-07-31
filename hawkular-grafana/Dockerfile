FROM docker.io/hawkular/hawkular-grafana-datasource:1.0.10
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-grafana (docker.io/hawkular/hawkular-grafana-datasource:1.0.10)" \
    Vendor="com.garethahealy" \
    Version="1.0.10" \
    License="Apache License, Version 2.0"

# Update to latest packages
USER root
RUN yum update -y && \
    yum clean all
