FROM alpine:latest
ARG GODOT_FILENAME

# eudev-dev contains libudev, which is necessary for Godot to work.
# Godot could also be built with udev=no, however this only caused
# segfaults during testing.
RUN apk add --no-cache fontconfig eudev-dev

# Use the chmod flag instead of running chmod to keep the file size low
# (Godot's impact on the image size will double if running chmod as a separate command
# due to it creating a separate layer as a result)
COPY --chmod=755 ${GODOT_FILENAME} /usr/bin/godot
