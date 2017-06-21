# newrelic-rabbitmq [![Docker Pulls](https://img.shields.io/docker/pulls/tamtamchik/newrelic-rabbitmq.svg?maxAge=2592000)](https://hub.docker.com/r/tamtamchik/newrelic-rabbitmq/)

Docker container for [Pivotal Plugin for New Relic Monitoring for RabbitMQ](https://github.com/pivotalsoftware/newrelic_pivotal_agent).

## Usage

With docker run
```
docker run -e "NEW_RELIC_LICENSE_KEY=..." -e "RABBITMQ_MANAGEMENT_API_URL=http://guest:guest@localhost:15672" tamtamchik/newrelic-rabbitmq
```

## Configuration

Container accepts following environment parameters:
 - `NEW_RELIC_LICENSE_KEY` - New Relic license key (required)
 - `NEW_RELIC_VERBOSE` - All output goes to stdout/stderr. Default: `0`
 - `RABBITMQ_MANAGEMENT_API_URL` - RabbitMQ management plugin URL. Default: `http://guest:guest@localhost:15672`
 - `RABBITMQ_DEBUG` - Additional debug output. Do not send data to New Relic when `true`. Default: `false`

## Acknowledgements

This repo is just a docker wrapper on [Pivotal Plugins for New Relic Monitoring](https://github.com/pivotalsoftware/newrelic_pivotal_agent).
