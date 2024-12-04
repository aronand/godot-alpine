FROM alpine:latest
ARG GODOT_FILENAME

RUN apk add --no-cache fontconfig
COPY ${GODOT_FILENAME} /usr/bin/godot
