#!/usr/bin/env bash

CHALLENGE_DATA="/path/to/habitat-challenge-data"
DOCKER_NAME="sample-submission"

while [[ $# -gt 0 ]]
do
key="${1}"

case $key in
      --challenge-data)
      shift # past argument
      CHALLENGE_DATA="${1}"
      shift # past value
      ;;
      --docker-name)
      shift
      DOCKER_NAME="${1}"
	  shift
      ;;
    *) # unknown arg
      echo unkown arg ${1}
      exit
      ;;
esac
done

docker run -v ${CHALLENGE_DATA}:/habitat-challenge-data \
    --runtime=nvidia \
    ${DOCKER_NAME} \
    /bin/bash -c \
    ". activate habitat; export CHALLENGE_CONFIG_FILE=/habitat-challenge-data/challenge_pointnav.local.yaml; bash submission.sh"
