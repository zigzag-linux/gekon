#!/usr/bin/env bash

declare -r DOCKER_TAG=gekon:0.1

container_build()
{
	if [[ "$(docker images -q $DOCKER_TAG 2> /dev/null)" == "" ]]; then
		docker build -t $DOCKER_TAG docker/
	fi
}

container_run()
{
	local command=$1; shift
	docker run --privileged --rm -v $(pwd):/kiwi -it $DOCKER_TAG $command
}

gekon_build()
{
	container_run "kiwi --type iso -b /kiwi/desc/ -d /kiwi/out/"
}

main()
{
	container_build
	gekon_build
}

main $@
