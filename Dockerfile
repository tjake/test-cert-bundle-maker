FROM debian:buster-slim

RUN apt-get -y update && mkdir -p /usr/share/man/man1 && apt-get -y install python3 openssl openjdk-11-jre-headless && apt-get -y clean && mkdir /data

COPY ./secure-bundle-create ./

ENTRYPOINT [ "./secure-bundle-create" ]
