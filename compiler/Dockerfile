FROM liyustar/sshd
MAINTAINER liyustar <liyustar@gmail.com>

RUN apt-get update
RUN apt-get install -y build-essential g++

# Declare
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
