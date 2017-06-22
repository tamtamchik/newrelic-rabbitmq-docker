# newrelic-rabbitmq

[![Docker Pulls](https://img.shields.io/docker/pulls/tamtamchik/newrelic-rabbitmq.svg?style=flat-square)](https://hub.docker.com/r/tamtamchik/newrelic-rabbitmq/)
[![Docker Automated](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?style=flat-square)](https://hub.docker.com/r/tamtamchik/newrelic-rabbitmq/)
[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://raw.githubusercontent.com/tamtamchik/newrelic-rabbitmq-docker/master/LICENSE)

Docker wrapper for [New Relic RabbitMQ Plugin](https://github.com/modcloth/newrelic_rabbitmq_plugin).  

So far it's the best New Relic RabbitMQ Plugin that we have.  
`¯\_(ツ)_/¯`

## Usage

With docker:
```
docker run \
  -e NEW_RELIC_LICENSE_KEY=... \
  -e NEW_RELIC_VERBOSE=0 \
  -e RABBITMQ_MANAGEMENT_API_URL=http://guest:guest@localhost:15672 \
  -e RABBITMQ_CLUSTER_NAME="Production RabbitMQ" \
  tamtamchik/newrelic-rabbitmq
```

## Configuration

Container accepts following environment parameters:

Variable | Description | Default
---------|-------------|---------
`NEW_RELIC_LICENSE_KEY` | **Required!** New Relic license key. |
`NEW_RELIC_VERBOSE` | All output goes to stdout/stderr. | `0`
`RABBITMQ_MANAGEMENT_API_URL` | RabbitMQ management plugin URL. | `http://guest:guest@localhost:15672`
`RABBITMQ_CLUSTER_NAME` | Name that will show up in NewRelic. | `Production RabbitMQ`
