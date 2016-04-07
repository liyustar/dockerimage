FROM u_rabbitmq
MAINTAINER liyustar

# Add script to create default user /vhosts
ADD init.sh /init.sh

# Declare
EXPOSE 15672
EXPOSE 5672

CMD ["/init.sh"]
