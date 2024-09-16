#!/bin/bash

# Run docker-compose in the portainer directory
docker compose -f portainer/docker-compose.yaml up -d

# Run docker-compose in the dns directory
docker compose -f dns/docker-compose.yaml up -d

# Run docker-compose in the media_services directory
docker compose -f media_services/docker-compose.yaml up -d

# Run docker-compose in the transcode directory
docker compose -f transcode/docker-compose.yaml up -d

# Run docker-compose in the vaultwarden directory
docker compose -f vaultwarden/docker-compose.yaml up -d