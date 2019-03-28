#!/usr/bin/env bash

docker run -v ${CHALLENGE_DATA}:/habitat-challenge-data \
    --runtime=nvidia \
    ${DOCKER_NAME} \
    /bin/bash -c \
    ". activate habitat; export CHALLENGE_CONFIG_FILE=/habitat-challenge-data/challenge_pointnav.local.yaml; bash submission.sh"
