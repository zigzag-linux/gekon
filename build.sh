#!/usr/bin/env bash

#
# Build distribution image in self contained environment
# Usage: ./build.sh plasma|gnome|base [iso|vmx]
#

declare -r DOCKER_TAG=gekon:0.2

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
    local params_profiles="--profile ${1:-base}"; shift
    local param_type="--type ${1:-iso}"; shift

    container_run "kiwi-ng ${params_profiles} ${param_type} system build --description /kiwi/desc --target-dir /kiwi/out"
}

main()
{
    local profile=$1; shift
    local type=$1; shift

    container_build
    gekon_build $profile $type
}

main $@
