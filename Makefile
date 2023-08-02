lint:
	docker run --rm -i -v "$(shell pwd):/tmp/utility" --workdir="/tmp/utility" hadolint/hadolint hadolint Dockerfile --ignore DL3008 --verbose

build:
	docker build -t utility .
