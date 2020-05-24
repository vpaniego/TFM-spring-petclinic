FROM openjdk:8-jre-alpine
VOLUME /tmp

# Download dockerize and cache that layer
ARG DOCKERIZE_VERSION
RUN wget -O dockerize.tar.gz https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-alpine-linux-amd64-v0.6.1.tar.gz
RUN tar xzf dockerize.tar.gz
RUN chmod +x dockerize
