FROM ubuntu:14.04
MAINTAINER liyustar <liyustar@gmail.com>

ENV work /work
WORKDIR ${work}
ADD ./zabbix-release_3.0-1+trusty_all.deb ${work}
RUN dpkg -i zabbix-release_3.0-1+trusty_all.deb
RUN apt-get update
RUN apt-get install -y zabbix-server-mysql zabbix-frontend-php zabbix-java-gateway
RUN apt-get install -y supervisor

# mysql
# zabbix
RUN /etc/init.d/mysql start && \
  mysql -e "create database zabbix character set utf8 collate utf8_bin;" && \
  mysql -e "grant all privileges on zabbix.* to 'zabbix'@'localhost' identified by 'zabbix';" && \
  cd /usr/share/doc/zabbix-server-mysql && \
  zcat create.sql.gz | mysql -uroot zabbix


# zabbix conf
COPY ./zabbix_server.conf /etc/zabbix/zabbix_server.conf
COPY ./zabbix_java/startup.sh /usr/sbin/zabbix_java/startup.sh
COPY ./zabbix_java/shutdown.sh /usr/sbin/zabbix_java/shutdown.sh
COPY ./zabbix_java/settings.sh /usr/sbin/zabbix_java/settings.sh
RUN sed -i '19s|# php_value.*|php_value date.timezone Asia/Shanghai|' /etc/apache2/conf-enabled/zabbix.conf

# supervisor
ADD ./dfg.sh /usr/local/bin/
ADD ./supervisor-all.conf /etc/supervisor/conf.d/

# Declare
EXPOSE 80
EXPOSE 10051
EXPOSE 10052

CMD ["/usr/bin/supervisord"]
