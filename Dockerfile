FROM fluent/fluentd:latest

MAINTAINER Campbell Allen

USER ubuntu

WORKDIR /home/ubuntu

ENV PATH /home/ubuntu/ruby/bin:$PATH

#RUN gem install fluent-plugin-secure-forward && gem install fluent-plugin-elasticsearch
RUN gem install fluent-plugin-elasticsearch

EXPOSE 24284

CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
