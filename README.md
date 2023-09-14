# postgres-container

This repository contains a Dockerfile and a docker-compose.yml file to create a PostgreSQL database running as a container.

## Prerequisites

- Docker

## Usage

1. Clone this repository to your local machine using the following command:
```
git clone <repository-url>
```

2. Navigate to the cloned repository.

3. Run the following command to build the container:
```
docker build -t <image-name>
```

4. Run the following command to start the container:
```
docker run -d -p 5432:5432 --name <container-name> <image-name>
```
5. You can now connect to your PostgreSQL database using any PostgreSQL client by specifying `localhost` as the host and `5432` as the port.

## Configuration

The following environment variables can be set in the `docker-compose.yml` file:

- `POSTGRES_USER`: The username for the PostgreSQL user (default: `docker`).
- `POSTGRES_PASSWORD`: The password for the PostgreSQL user (default: `docker`).
- `POSTGRES_DB`: The name of the PostgreSQL database (default: `docker`).

## License

This project is licensed under the MIT License - see the LICENSE file for details.
