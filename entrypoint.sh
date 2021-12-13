#!/usr/bin/env bash

export PORTER_HOST=${INPUT_HOST}
export PORTER_CLUSTER=${INPUT_CLUSTER:?input \"cluster\" not set or empty}
export PORTER_PROJECT=${INPUT_PROJECT:?input \"project\" not set or empty}
export PORTER_TOKEN=${INPUT_TOKEN:?input \"token\" not set or empty}
export PORTER_NAMESPACE=${INPUT_NAMESPACE:?input \"namespace\" not set or empty}
export PORTER_GIT_INSTALLATION_ID=${INPUT_INSTALLATION_ID:?input \"installation_id\" not set or empty}

porter delete
