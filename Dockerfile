FROM ubuntu
RUN apt update
RUN apt install -y debian-keyring debian-archive-keyring apt-transport-https
RUN -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/caddy-stable.asc
RUN -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
RUN apt update
RUN apt install caddy
