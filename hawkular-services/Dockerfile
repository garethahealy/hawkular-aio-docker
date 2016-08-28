FROM docker.io/jboss/base-jdk:8

# Download Hawkular-Services
RUN cd $HOME && curl -L# https://www.github.com/hawkular/hawkular-services/releases/download/0.0.10.Final/hawkular-services-dist-0.0.10.Final.tar.gz | tar zx
RUN sh $HOME/hawkular-services-dist-0.0.10.Final/bin/add-user.sh -a -u admin -p admin -g read-write,read-only

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

# Expose the ports we're interested in
EXPOSE 8080

RUN ls -lrt  $HOME/hawkular-services-dist-0.0.10.Final/bin/standalone.sh

CMD ["/opt/jboss/hawkular-services-dist-0.0.10.Final/bin/standalone.sh", "-b","0.0.0.0","-bmanagement","0.0.0.0", "-Dhawkular.rest.user=admin", "-Dhawkular.rest.password=admin", "-Dhawkular.agent.enabled=true"]
