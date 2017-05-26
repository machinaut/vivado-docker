
.PHONY: build attach run

build:
	rocker build

attach:
	rocker build --attach

run:
	pkill socat
	socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"${DISPLAY}\" &
	open -a xQuartz
	docker run -it --rm \
	    --net host \
	    -v /tmp/.X11-unix:/tmp/.X11-unix \
	    -e DISPLAY=192.168.1.167:0 \
	    vivado:0.1 \
		./vivado
