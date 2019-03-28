#!/usr/bin/env bash

docker run -v {1}:/habitat-challenge-data \
    --runtime=nvidia \
    {2} \
    /bin/bash -c \
    ". activate habitat; export CHALLENGE_CONFIG_FILE=/habitat-challenge-data/challenge_pointnav.local.yaml; bash submission.sh"
