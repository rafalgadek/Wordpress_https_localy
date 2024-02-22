# Wordpress HTTPS localy

## Overview

- Contenerised Wordpress CMS
- Using HTTPS for local development
- Demo

## Prerequisites

- [Docker v24](https://www.docker.com/) or newer
- [Mkcret v1.4.4](https://github.com/FiloSottile/mkcert?ref=knp-backend.ghost.io) or newer
- .env file containing credentials for database according to .env.example file
- ./cert directory for storage of certificates

## Usage

- Install Mkcert according to your os and instructions in [repo](https://github.com/FiloSottile/mkcert)

- to install local CA in the system trust store use

```bash
mkcert -install
```

- create ./certs directory

```bash
mkdir certs
```

- to create certificate and key .pem files in ./cert use:

```bash
mkcert -cert-file local-cert.pem -key-file local-key.pem "wordpress-https.local" "*.wordpress-https.local" localhost 127.0.0.1 ::1
```

- add below entry to /etc/hosts

```bash
127.0.0.1   wordpress-https.local
```

### Base commands

to run application

```bash
docker compose up
```

to run application in a background

```bash
docker compose up -d
```

After starting containers, application is available at
`https://wordpress-https.local` \
or \
`localhost`
