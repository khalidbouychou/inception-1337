# Docker Virtualization Project
## Introduction
This project aims to enhance your system administration skills by utilizing Docker to set up a virtualized environment. You will create several Docker images and configure them in a personal virtual machine.

## General Guidelines
* __Virtual Machine:__ Complete the project within a Virtual Machine.
* __Source Files:__ Place all configuration files in the srcs folder.
* __Makefile:__ Create a Makefile at the root directory to build Docker images using docker-compose.yml.
* __Documentation:__ Familiarize yourself with Docker and related technologies through available documentation.

## Mandatory Part
### Infrastructure Setup:

* __NGINX:__ Container with TLSv1.2 or TLSv1.3 only.
* __WordPress + PHP-FPM:__ Container with WordPress and PHP-FPM installed and configured.
* __MariaDB:__ Container with MariaDB only.
### Volumes:
* Volume for WordPress database.
* Volume for WordPress website files.
* Docker Network: Create a network to connect your containers.
* Restart Policy: Ensure containers restart on crash.

### Restrictions:

* __No host network, `--link`, or `links`:__ Use a dedicated network defined in `docker-compose.yml`.
* __No Infinite Loops:__ Avoid commands like `tail -f`, `sleep infinity`, or `while true`.
* __No Latest Tag:__ Do not use the `latest` tag for Docker images.
* __No Passwords in Dockerfiles:__ Use environment variables for configuration.

### Configuration:

* __WordPress:__ Create two users in the database; avoid using usernames like `admin` or `administrator`.
* __Volumes Path:__ Available in `/home/login/data` on the host machine.
* __Domain Configuration:__ Configure your domain to point to your local IP address (e.g., `login.42.fr`).

### How to Run the Project
* __Clone the Repository:__

```bash
git clone git@github.com:ADILRAQ/Inception-42-cursus.git
cd Inception-42-cursus
```
* __Configure Environment Variables:__

Edit the `.env` file in the `srcs` directory to set up your environment variables.
Build and Start Containers:

* __Run the following command to build Docker images and start the containers:__

```bash
make
```

* __Access the Services:__

> * Ensure your domain name is configured to point to your local IP address.
> * Access the services through your domain (e.g., `https://login.42.fr`).


## Article
* [Docker Fundamentals](https://araq.notion.site/Docker-Fundamentals-266a28f6376749b1935e3c2c91bf0333?pvs=4)

## Representation
![Docker Network representation](https://github.com/ADILRAQ/Inception-42-cursus/blob/main/Network%20Structure.png/?raw=true)
