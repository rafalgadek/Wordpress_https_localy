# Wordpress_containerised

## Overview
- Contenerised Wordpress CMS
- Using HTTPS for local development
- Demo

## Prerequisites
- [Docker v24](https://www.docker.com/) or newer
- Mkcret v1.4.4 or newer https://github.com/FiloSottile/mkcert?ref=knp-backend.ghost.io
- .env file containing credentials for database according to .env.example file

## Usage

### NGINX

- Install Mkcert according to instructions in repo

```bash
brew install mkcert...
```

- create ./cert directory

```bash
mkdir cert
```

- in ./cert use:

```bash
mkcert -cert-file local-cert.pem -key-file local-key.pem "wordpress-https.local" "*.wordpress-https.local">
```

  to create certificate and key .pem files
- Base commands
    <$ docker compose up> - to run application
    <$ docker compose up -d> - to run application in a background
- After running commands, aplication is available at `https://wordpress-https.local`

```bash
docker build ./Dockerfile.wordpress -t ubuntu-wordpress
```



Caveats
-you need /etc/host to make it work

TODOs
- Ubuntu base image for wordpress and db containers

---

+ wtyczka do Markdown
+ poprawić składnie Markdown
+ dodać przykłady użycia
+ więcej komend dockerowych z opisem i ewntualnymi linkami do dokumentacji
