FROM docker.io/welshstew/hawkular-metrics-grafana:latest
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="grafana(docker.io/welshstew/hawkular-metrics-grafana:latest" \
    Vendor="com.garethahealy" \
    Version="0.1" \
    License="Apache License, Version 2.0"

# Update to latest packages
RUN apt-get update \
    && apt-get upgrade -y
