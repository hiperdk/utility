lint:
	docker run --rm -i -v "$(shell pwd):/tmp/utility" --workdir="/tmp/utility" hadolint/hadolint hadolint Dockerfile --ignore DL3008 --verbose

build:
	docker buildx bake --set *.platform=linux/amd64 --set default.tags=utility
