FROM ghcr.io/fernandoenzo/debian:testing

COPY contents/ /tmp/contents
RUN bash /tmp/contents/scripts/basics

EXPOSE 80/tcp
EXPOSE 443/tcp

