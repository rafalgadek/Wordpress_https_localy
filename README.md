# Wordpress_containerised

Overwiew
- Contenerised Wordpress CMS
- Using HTTPS for local development
- Demo

Prerequisites
- Docker v24 or newer
- Mkcet v1.4.4 or newer https://github.com/FiloSottile/mkcert?ref=knp-backend.ghost.io
- .env file containing credentials for database according to .env.example file

Usage
- Install Mkcert according to instructions in repo
- create ./cert directory
- in ./cert use: <$ mkcert -cert-file local-cert.pem -key-file local-key.pem "wordpress-https.local" "*.wordpress-https.local">
  to create certificate and key .pem files
- Base commands
    <$ docker compose up> - to run application
    <$ docker compose up -d> - to run application in a background
- After running commands, aplication is available at https://wordpress-https.local

Caveats
-

TODOs
- Ubuntu base image for wordpress and db containers
