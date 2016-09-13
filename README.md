# hawkular-aio-docker
## Run
- docker-compose up

## Build
- docker build --tag=hawkular-cassandra:3.7 .
- docker build --tag=hawkular-services:0.0.11 .
- docker build --tag=hawkular-apm:0.0.10 .
- docker build --tag=hawkular-grafana:0.1 .

## UIs
- DOCKERMACHINE_IP=$(docker-machine env | grep DOCKER_HOST | cut -d'"' -f2 | cut -d'/' -f3 | cut -d':' -f1)
- IP_FOR_HAWKULAR=${DOCKERMACHINE_IP:-localhost}

## Services
- http://$IP_FOR_HAWKULAR:8082/hawkular

### Load test data
- http://www.hawkular.org/hawkular-services/docs/quickstart-guide/#_step_1_add_metrics
- curl -u admin:admin -X POST http://$IP_FOR_HAWKULAR:8082/hawkular/metrics/gauges/temperature/raw -d @request.json -H "Content-Type: application/json" -H "Hawkular-Tenant: openshift"
- curl -u admin:admin -X GET "http://$IP_FOR_HAWKULAR:8082/hawkular/metrics/gauges/temperature/raw?start=1468533600000&end=1468618200001&order=ASC" -H "Content-Type: application/json" -H "Hawkular-Tenant: openshift"

## APM
- http://$IP_FOR_HAWKULAR:8081/hawkular-ui/apm
