#!/bin/bash

set -euo pipefail

source bash-util/functions.sh

prepare_local_environment ${@}

echo -E "Generating coturn configuration ..."

HOST_SERVICE_SERVER_COTURN_COMMAND=generate
HOST_SERVICE_SERVER_COTURN_RESTART_POLICY=no

docker-compose --file ${HOST_PATH_TO_DOCKER_COMPOSE_FILE} \
               up

echo -e "Generating coturn configuration ... $( __done )"
