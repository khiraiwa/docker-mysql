FROM ubuntu:14.04.2

MAINTAINER khiraiwa

# Initialize apt-get
RUN ["apt-get", "update"]
ENV DEBIAN_FRONTEND noninteractive
RUN ["apt-get", "install", "mysql-server-5.6", "-y"]

# Mount data dir
RUN ["mkdir", "/data_mysql"]
VOLUME /data_mysql:/data_mysql

EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]
