FROM debian:bullseye

RUN apt update  -y && apt install wget -y && apt-get install php php-mysql -y

COPY ./tools/script.sh /

RUN chmod +x /script.sh

ENTRYPOINT [ "./script.sh" ]
