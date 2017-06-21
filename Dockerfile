FROM ruby:alpine
MAINTAINER Yuri Tkachenko <yuri.tam.tkachenko@gmail.com>

RUN apk add --no-cache git build-base

WORKDIR /data/newrelic-rabbitmq
RUN git clone https://github.com/pivotalsoftware/newrelic_pivotal_agent.git .
COPY newrelic_plugin.yml ./config/newrelic_plugin.yml
COPY start.sh ./start.sh
RUN bundle install

CMD ["sh", "./start.sh"]
