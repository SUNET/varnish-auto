all: build push
update:
	docker build -t varnish-auto .
	docker tag -f varnish-auto docker.sunet.se/varnish-auto
build:
	docker build --no-cache=true -t varnish-auto .
	docker tag -f varnish-auto docker.sunet.se/varnish-auto
push:
	docker push docker.sunet.se/varnish-auto
