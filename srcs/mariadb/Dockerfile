FROM debian:buster

RUN apt update 
RUN apt-get -y upgrade
RUN apt -y install mariadb-server procps

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./my.cnf /etc/mysql/my.cnf
COPY ./script.sh /

CMD ["bash", "script.sh"]
