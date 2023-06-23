#!/bin/bash

# Get list of docker compose files
COMPOSE_LIST=(`ls -1 | grep -E 'docker-compose.*.y(a|)ml'`)

COMMAND='docker compose'

for COMPOSE in ${COMPOSE_LIST[@]}
do
	COMMAND+=" -f ${COMPOSE}"
done

# Check if docker compose is running
RUNNING_DIR_PATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
RUNNING_DIR_NAME=${RUNNING_DIR_PATH##*/}

if ! [ "$($COMMAND ls -q | grep "${RUNNING_DIR_NAME}" 2>/dev/null)" == "${RUNNING_DIR_NAME}" ]; then
	echo "Creating containers from compose file(s)"
	exec `${COMMAND} up -d ${1}`
else
	echo "There are already containers running from the compose file(s)"
fi

