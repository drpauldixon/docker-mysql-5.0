FROM centos:5

RUN yum -y install mysql-server.x86_64
RUN mkdir /docker-entrypoint-initdb.d

VOLUME /var/lib/mysql

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["/usr/libexec/mysqld"]
