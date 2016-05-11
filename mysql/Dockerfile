FROM ubuntu:14.04
MAINTAINER liyustar <liyustar@gmail.com>

# USER lyx

# RUN apt-get update
RUN apt-get update && apt-get install -y mysql-server mysql-client

RUN sed -i 's/^bind-address/# bind-address/' /etc/mysql/my.cnf
RUN /etc/init.d/mysql start && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root';" && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root';"

# Declare
EXPOSE 3306
# VOLUME /var/lib/mysql

CMD ["/usr/sbin/mysqld"]
