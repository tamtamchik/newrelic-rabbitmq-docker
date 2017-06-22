#!/bin/sh

if [[ -z "${NEW_RELIC_LICENSE_KEY}" ]]; then
  echo "NEW_RELIC_LICENSE_KEY missing!"
  exit 1
fi

new_relic_key=${NEW_RELIC_LICENSE_KEY}
new_relic_verbose=${NEW_RELIC_VERBOSE:-0}
rabbit_management_url=${RABBITMQ_MANAGEMENT_API_URL:-"http://guest:guest@localhost:15672"}
rabbit_cluster_name=${RABBITMQ_CLUSTER_NAME:-"Production RabbitMQ"}

sed -i "s~%NEW_RELIC_LICENSE_KEY%~$new_relic_key~g" ./config/newrelic_plugin.yml
sed -i "s~%NEW_RELIC_VERBOSE%~$new_relic_verbose~g" ./config/newrelic_plugin.yml
sed -i "s~%RABBITMQ_MANAGEMENT_API_URL%~$rabbit_management_url~g" ./config/newrelic_plugin.yml
sed -i "s~%RABBITMQ_CLUSTER_NAME%~$rabbit_cluster_name~g" ./config/newrelic_plugin.yml

newrelic_rabbitmq_agent -c ./config/newrelic_plugin.yml
