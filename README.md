# Docker Compose Setup for WordPress

This Docker Compose configuration simplifies the setup of a local development environment for WordPress using Docker. It includes WordPress, MySQL, and phpMyAdmin services, making it easy for testing and development.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Configuration](#configuration)
- [Data Persistence](#data-persistence)
- [License](#license)

## Prerequisites

Before you get started, ensure that you have the following prerequisites installed on your system:

- Docker
- Docker Compose

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone <repository_url>
   ```

2. Navigate to the directory containing the docker-compose.yml file:

    ```bash
     cd <repository_directory>
    ```

3. Start the services by running the following command:

   ```bash
   docker-compose up -d
   ```

This command launches the services in detached mode, allowing them to run in the background.

Access phpMyAdmin in your web browser at http://localhost:8080. Use the following credentials:

Username: root
Password: password
Access WordPress in your web browser at http://localhost:8000. Follow the WordPress setup process to configure your site.

To stop the services, use the following command:

  ```bash
      docker-compose down
  ```

Configuration
The Docker Compose configuration includes the following services and settings:

Database (MySQL):

Image: mysql:5.7
Root Username: root
Root Password: password
Database Name: wordpress
WordPress User: wordpress
WordPress Password: wordpress
Connection Host: db:3306
phpMyAdmin:

Image: phpmyadmin/phpmyadmin
Access at http://localhost:8080
Connection Host: db
Root Username: root
Root Password: password
WordPress:

Image: wordpress:latest
Access at http://localhost:8000
Data Volume: ./:/var/www/html
Data Persistence
This Docker Compose setup ensures data persistence for the MySQL database. Data is stored in Docker volumes, allowing it to persist even if containers are stopped or removed.

License
This configuration is provided under the MIT License. For details, please see the LICENSE file in this repository.
    

   
