FROM ubuntu:14.04
MAINTAINER liyustar <liyustar@gmail.com>

RUN apt-get update
RUN apt-get install -y openssh-server

# ssh-server config
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

# Declare
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
