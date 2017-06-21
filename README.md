# newrelic-rabbitmq

[![Docker Pulls](https://img.shields.io/docker/pulls/tamtamchik/newrelic-rabbitmq.svg?style=flat-square)](https://hub.docker.com/r/tamtamchik/newrelic-rabbitmq/)
[![Docker Automated](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?style=flat-square)](https://hub.docker.com/r/tamtamchik/newrelic-rabbitmq/)
[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://raw.githubusercontent.com/tamtamchik/newrelic-rabbitmq-docker/master/LICENSE)

Docker container for [Pivotal Plugin for New Relic Monitoring for RabbitMQ](https://github.com/pivotalsoftware/newrelic_pivotal_agent).

## Usage

With docker:
```
docker run \
  -e NEW_RELIC_LICENSE_KEY=... \
  -e NEW_RELIC_VERBOSE=0 \
  -e RABBITMQ_MANAGEMENT_API_URL=http://guest:guest@localhost:15672 \
  -e RABBITMQ_DEBUG=false \
  tamtamchik/newrelic-rabbitmq
```

## Configuration

Container accepts following environment parameters:

Variable | Description | Default
---------|-------------|---------
`NEW_RELIC_LICENSE_KEY` | **Required!** New Relic license key. |
`NEW_RELIC_VERBOSE` | All output goes to stdout/stderr. | `0`
`RABBITMQ_MANAGEMENT_API_URL` | RabbitMQ management plugin URL. | `http://guest:guest@localhost:15672`
`RABBITMQ_DEBUG` | Additional debug output. | `false`

> When `RABBITMQ_DEBUG` is `true` agent does not send data to New Relic.

## Acknowledgements

This repo is just a docker wrapper on [Pivotal Plugins for New Relic Monitoring](https://github.com/pivotalsoftware/newrelic_pivotal_agent).
