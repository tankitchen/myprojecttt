FROM ubuntu
RUN apt update
RUN apt install nodejs -y
RUN apt install npm
RUN npm install --global http-server
RUN git clone https://github.com/RaymondHb/testing.git
RUN cd testing
RUN http-server -p 8080
EXPOSE 8080
