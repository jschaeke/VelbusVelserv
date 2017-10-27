FROM hypriot/rpi-alpine-scratch

RUN apk update && \
apk upgrade && \
apk add bash gcc musl-dev libgcc && \
rm -rf /var/cache/apk/*
RUN mkdir -p /opt/velbus
COPY velserv.c /opt/velbus
RUN cd /opt/velbus && \
    gcc -o velserv velserv.c -lpthread
EXPOSE 3788

CMD ["/opt/velbus/velserv","-v","-v","-v","-v"]
