
.PHONY: build attach run

build:
	rocker build

attach:
	rocker build --attach

run:
	docker run -it --rm \
	    --net host \
	    -v /tmp/.X11-unix:/tmp/.X11-unix \
	    -e DISPLAY=unix$DISPLAY \
	    --name vivado \
	    vivado:0.1
