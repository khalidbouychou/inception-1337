# base image
FROM debian:bullseye

# install mariadb server
RUN apt update && apt -y install mariadb-server

# copy the script.sh into container
COPY ./tools/script.sh /script.sh

# change the permission to the script.sh
RUN chmod +x /script.sh

# run the script.sh
ENTRYPOINT [ "./script.sh" ]

# running mysqld daemon
CMD [ "mysqld" ]