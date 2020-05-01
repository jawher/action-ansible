#!/bin/bash

set -euo pipefail

: "${ANSIBLE_SSH_KEY?SSH_KEY environment variable must be set}"

mkdir ~/.ssh
echo "${ANSIBLE_SSH_KEY}" > ~/.ssh/id_rsa
chmod 0600 ~/.ssh/id_rsa

# Run and preserve output for consumption by downstream actions
exec "$@"
