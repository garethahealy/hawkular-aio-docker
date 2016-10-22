FROM docker.io/cassandra:3.7
MAINTAINER garethahealy (https://github.com/garethahealy/)

LABEL Name="hawkular-cassandra (docker.io/cassandra:3.7)" \
    Vendor="com.garethahealy" \
    Version="3.7" \
    License="Apache License, Version 2.0"

# Update to latest packages
RUN apt-get update \
    && apt-get upgrade -y

RUN sed -i "s/#-Xms4G/-Xms4G/g" /etc/cassandra/jvm.options \
    && sed -i "s/#-Xmx4G/-Xmx4G/g" /etc/cassandra/jvm.options
