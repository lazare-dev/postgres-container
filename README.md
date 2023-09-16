# PostgreSQL Container

This repository provides a Docker-based setup for running a PostgreSQL database as a container.

## Prerequisites

Before you begin, ensure that you have the following installed on your system:

- Docker

## Getting Started

Follow these steps to set up and run the PostgreSQL container:

1. Clone this repository to your local machine using the following command:

   ```shell
   git clone <repository-url>
   ```
Navigate to the cloned repository:

   ```shell
   cd postgres-container
   ```

Build the container image:

   ```shell
   docker build -t <image-name> ./postgres
   ```

Replace <image-name> with your desired image name.

Start the PostgreSQL container:

   ```shell
   docker run -d -p 5432:5432 --name <container-name> <image-name>
   ```
Replace <container-name> with your preferred container name.

You can now connect to your PostgreSQL database using any PostgreSQL client by specifying localhost as the host and 5432 as the port.

Configuration
You can customize the PostgreSQL container's configuration by modifying the docker-compose.yml file. The following environment variables can be set:

POSTGRES_USER: The username for the PostgreSQL user (default: docker).
POSTGRES_PASSWORD: The password for the PostgreSQL user (default: docker).
POSTGRES_DB: The name of the PostgreSQL database (default: docker).

License
This project is licensed under the MIT License. See the LICENSE file for details.
