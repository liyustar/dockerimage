FROM u_sshd
MAINTAINER lyx

ENV work /work
WORKDIR ${work}


# RUN echo "deb http://www.rabbitmq.com/debian/ stable main" >> /etc/apt/sources.list
# ADD ./rabbitmq-signing-key-public.asc ${work}
# RUN apt-key add rabbitmq-signing-key-public.asc

# RUN apt-get update
RUN apt-get install -y --force-yes rabbitmq-server

# rabbitmq-server config
ADD erlang.cookie ${work}/erlang.cookie
RUN cat ${work}/erlang.cookie > /var/lib/rabbitmq/.erlang.cookie
RUN chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie
RUN chmod 400 /var/lib/rabbitmq/.erlang.cookie
# RUN rabbitmqctl reset
RUN rabbitmq-plugins enable rabbitmq_management

ADD init.sh /init.sh

# Declare
EXPOSE 15672
EXPOSE 5672
EXPOSE 22

CMD ["/init.sh"]
