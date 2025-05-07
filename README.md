# godot-alpine

A lightweight Alpine based image with Godot built from source.

The generated Godot binary is also available for download from the releases.

## How to use

The Docker image is available at https://hub.docker.com/r/aronand/godot-alpine,
and can be pulled with `docker pull aronand/godot-alpine:{version}`.

The Godot binary is located within `/usr/bin/` and can invoked by executing `godot {args}`
in the terminal.

## Known issues

### Godot Jolt addon (Godot <4.4)

Godot Jolt addon does not work with Alpine, as it's linked against `glibc`.
Installing `gcompat` or `alpine-pkg-glibc` does not seem to remedy the issue either.

Note that this issue may also impact other addons that rely on `glibc`. 

## Acknowledgments

Forked from https://github.com/xaltaq/godot-alpine
