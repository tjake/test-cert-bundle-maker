FROM debian:buster-slim

RUN apt-get -y update && mkdir -p /usr/share/man/man1 && apt-get -y install python3 openssl openjdk-11-jdk-headless

COPY ./secure-bundle-create ./

ENTRYPOINT [ "./secure-bundle-create" ]