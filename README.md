# postgres-container

This repository contains a Dockerfile and a docker-compose.yml file to create a PostgreSQL database running as a container.

## Prerequisites

- Docker
- Kubernetes (enabled in Docker Desktop)

## Usage

1. Clone this repository to your local machine using the following command:

```
git clone <repository-url>
```

2. Navigate to the cloned repository.

3. Build and run the Docker containers using Docker Compose:

```
docker-compose up -d --build
```

4. You can now connect to your PostgreSQL database using any PostgreSQL client by specifying `localhost` as the host and `5432` as the port.

## Configuration

The following environment variables can be set in the `docker-compose.yml` file:

- `POSTGRES_USER`: The username for the PostgreSQL user (default: `docker`).
- `POSTGRES_PASSWORD`: The password for the PostgreSQL user (default: `docker`).
- `POSTGRES_DB`: The name of the PostgreSQL database (default: `docker`).

## Deploying to Kubernetes

If you want to deploy this application to Kubernetes, follow these steps:

1. Make sure you have Kubernetes enabled in Docker Desktop.

2. Once Kubernetes is enabled, deploy the application by applying the Kubernetes Deployment YAML files:
   
```
cd deployment-files
kubectl apply -f deployment-api.yaml
kubectl apply -f deployment-db.yaml
```

3. Get a list of pods and their status:

```
kubectl get pods
```

4. View the logs of a specific pod (replace `pod-id` with the actual pod name):

```
kubectl logs pod-id
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.

