#!/usr/bin/env bash

export PORTER_HOST=${INPUT_HOST}
export PORTER_CLUSTER=${INPUT_CLUSTER:?input \"cluster\" not set or empty}
export PORTER_PROJECT=${INPUT_PROJECT:?input \"project\" not set or empty}
export PORTER_TOKEN=${INPUT_TOKEN:?input \"token\" not set or empty}
export PORTER_DEPLOYMENT_ID=${INPUT_DEPLOYMENT_ID:?input \"deployment_id\" not set or empty}

porter delete
