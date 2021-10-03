FROM ubuntu
RUN apt update
RUN bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
EXPOSE 54321
