FROM ubuntu
RUN apt update
RUN apt install nginx -y
RUN service nginx start
