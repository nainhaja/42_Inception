FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt install nginx -y
RUN apt-get install openssl -y 

COPY ./default /etc/nginx/sites-available/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=BENGUERIR/L=RIAD/O=nainhaja/OU=Org/CN=localhost"

COPY ./script.sh /
CMD sh script.sh
