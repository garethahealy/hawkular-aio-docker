FROM docker.io/jboss/base-jdk:8

# Update to latest packages
USER root
RUN yum update -y

# switch back to jboss
USER 1000

ENV HAWK_SERVICES_VERSION 0.0.12.Final

# Download Hawkular-Services
RUN cd $HOME \
 && curl -L https://github.com/hawkular/hawkular-services/releases/download/$HAWK_SERVICES_VERSION/hawkular-services-dist-$HAWK_SERVICES_VERSION.zip -o hawkular-services-dist-$HAWK_SERVICES_VERSION.zip \
 && bsdtar -xf hawkular-services-dist-$HAWK_SERVICES_VERSION.zip \
 && rm -f hawkular-services-dist-$HAWK_SERVICES_VERSION.zip \
 && mv hawkular-services-dist-$HAWK_SERVICES_VERSION hawkular-services-dist

# Add user
RUN sh $HOME/hawkular-services-dist/bin/add-user.sh -a -u admin -p admin -g read-write,read-only

# Expose the ports we're interested in
EXPOSE 8080

CMD ["/opt/jboss/hawkular-services-dist/bin/standalone.sh", "-b","0.0.0.0","-bmanagement","0.0.0.0", "-Dhawkular.rest.user=admin", "-Dhawkular.rest.password=admin", "-Dhawkular.agent.enabled=true"]
