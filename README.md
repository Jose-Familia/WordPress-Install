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

Image: mysql:5.7 </br>
Root Username: root </br>
Root Password: password </br>
Database Name: wordpress </br>
WordPress User: wordpress </br>
WordPress Password: wordpress </br>
Connection Host: db:3306 </br>

phpMyAdmin:

Image: phpmyadmin/phpmyadmin </br>
Access at http://localhost:8080 </br>
Connection Host: db </br>
Root Username: root </br>
Root Password: password </br>

WordPress:

Image: wordpress:latest </br>
Access at http://localhost:8000 </br>
Data Volume: ./:/var/www/html </br>
Data Persistence </br>

This Docker Compose setup ensures data persistence for the MySQL database. Data is stored in Docker volumes, allowing it to persist even if containers are stopped or removed.

License
This configuration is provided under the MIT License. For details, please see the LICENSE file in this repository.
    

   
