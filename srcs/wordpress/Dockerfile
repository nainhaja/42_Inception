FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt install wget -y
RUN apt install dpkg -y
RUN apt install gnupg -y lsb-release
RUN apt-get install php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mbstring php7.3-xml php7.3-gd php7.3-curl -y

WORKDIR "/var/www/html"
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xvf latest.tar.gz
WORKDIR "/var/www/html/wordpress"

COPY ./wp-config.php /var/www/html/wordpress
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./script.sh /



ENTRYPOINT ["bash", "/script.sh"]

