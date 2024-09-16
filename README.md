# HomeLab Server

This repository provides configurations for setting up a HomeLab server with services like a media server, tools, DNS, and more.

## Prerequisites

- **Linux server**: You'll need a Linux machine to run these services.
- **Docker**: Docker is a containerization platform for running applications in isolated environments. Installation instructions can be found on the Docker website: <https://docs.docker.com/engine/install/>
- **Docker Compose**: Docker Compose helps define and run multi-container applications. Installation instructions can be found on the Docker documentation: <https://docs.docker.com/compose/install/>

### Environment Variables

Some docker-compose.yaml files rely on environment variables for proper functioning. References for these variables can be found in the `.env.sample` file within each directory. The following table summarizes the variables:


#### DNS directory

| Variable                                      | Description                                                         |
| --------------------------------------------- | ------------------------------------------------------------------- |
| `PIHOLE_PASSWORD`                             | Password for the Pihole user.                                        |

#### Media Service directory

| Variable                                      | Description                                                         |
| --------------------------------------------- | ------------------------------------------------------------------- |
| `MEDIA`                                       | Path on our system to store movies and tv shows.                           |
| `STORAGE`                                     | Path where downloaded torrent files are stored before renaming.              |
| `SAMBA_PASSWORD`                              | Samba user password.             |

#### Trancode directory

| Variable                                      | Description                                                         |
| --------------------------------------------- | ------------------------------------------------------------------- |
| `MEDIA`                                       | Path on our system to store movies and tv shows.          |

#### Vaultwarden directory

| Variable                                      | Description                                                         |
| --------------------------------------------- | ------------------------------------------------------------------- |
| `DOMAIN`                                      | Domain name for web access to Vaultwarden.                           |
| `ADMIN_TOKEN`                                 | Token for the Vaultwarden admin user.              |

## Clone project

To get a local please follow these steps:

1. Clone this repository.

   ```sh
   git clone https://github.com/victorgmp/HomeLabServer
   ```

2. Create an `.env` file.

   ```sh
   cp .env.sample .env
   ```

   This creates a copy of the `.env.sample` file named `.env`.

3. Use a text editor like `nano` to edit the newly created `.env` file. Update the environment variables with your specific values based on the table above. Save the changes.

   ```sh
   nano .env
   ```

## Run all containers

- To launch all services defined in the project, navigate to the root directory and run:

   ```sh
   sh orquestrator.sh
   ```

### Run specific service

- If you want to run a specific service (e.g., media server), navigate to that service's directory and run:

   ```sh
   docker compose up -d
   ```

  This command will build the necessary Docker image (if not already built) and start the container in detached mode (-d)

### View container logs

- To see the logs for running containers, use:

   ```sh
   docker compose logs -f
   ```

  This command displays logs for all running services in real-time (use Ctrl+C to stop).
