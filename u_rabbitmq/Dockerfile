FROM ubuntu:14.04
MAINTAINER lyx

ENV work /work
WORKDIR ${work}
# RUN echo "deb http://www.rabbitmq.com/debian/ stable main" >> /etc/apt/sources.list
# ADD ./rabbitmq-signing-key-public.asc ${work}
# RUN apt-key add rabbitmq-signing-key-public.asc
RUN apt-get update
RUN apt-get install -y rabbitmq-server

# rabbitmq-server config
RUN rabbitmq-plugins enable rabbitmq_management

# Declare
EXPOSE 15672
EXPOSE 5672

CMD ["rabbitmq-server","start"]
