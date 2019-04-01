FROM fernandoenzo/debian:10s-min
MAINTAINER Fernando Enzo Guarini (fernandoenzo@gmail.com)

COPY scripts/basics /tmp
COPY scripts/boot /usr/local/
COPY static/.bash_history /root

RUN bash /tmp/basics

VOLUME /etc/letsencrypt /etc/nginx

EXPOSE 80
EXPOSE 443