# vivado-docker

Run Vivado on Mac under docker.

X11 socket tunnelling courtesy of `socat` and xQuartz.

See note here about why this may be unsafe:

### Caveats

- kinda ugly in how it launches `socat` and xQuartz
- leaves `socat` process hanging around
- `socat` is unsecure -- I'm pretty sure just about anyone can connect
