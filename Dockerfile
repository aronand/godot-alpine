FROM alpine:latest
ARG GODOT_FILENAME

# eudev-dev contains libudev, which is necessary for Godot to work.
# Godot could also be built with udev=no, however this only caused
# segfaults during testing.
RUN apk add --no-cache fontconfig eudev-dev
COPY ${GODOT_FILENAME} /usr/bin/godot
