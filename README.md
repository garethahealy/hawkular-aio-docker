[![Build Status](https://travis-ci.org/garethahealy/hawkular-aio-docker.svg?branch=master)](https://travis-ci.org/garethahealy/hawkular-aio-docker)
[![License](https://img.shields.io/hexpm/l/plug.svg?maxAge=2592000)]()

# hawkular-aio-docker
## Build
- docker build --tag=hawkular-cassandra:v3.11 hawkular-cassandra
- docker build --tag=hawkular-services:0.40.1.Final hawkular-services
- docker build --tag=hawkular-grafana:1.1.2 hawkular-grafana

## Run
- docker-compose up

## UIs
- eval $(docker-machine env)
- DOCKERMACHINE_IP=$(docker-machine ip)
- export HAWKULAR_ENDPOINT=${DOCKERMACHINE_IP:-localhost}

## Services
- http://$HAWKULAR_ENDPOINT:8080

### Load test data
- http://www.hawkular.org/hawkular-services/docs/quickstart-guide/#_step_1_add_metrics
- curl -u admin:admin -X POST http://$IP_FOR_HAWKULAR:8080/hawkular/metrics/gauges/temperature/raw -d @request.json -H "Content-Type: application/json" -H "Hawkular-Tenant: openshift"
- curl -u admin:admin -X GET "http://$IP_FOR_HAWKULAR:8080/hawkular/metrics/gauges/temperature/raw?start=1468533600000&end=1468618200001&order=ASC" -H "Content-Type: application/json" -H "Hawkular-Tenant: openshift"
