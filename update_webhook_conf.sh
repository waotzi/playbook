#!/bin/bash

# Path to .env file
ENV_FILE_PATH=".env"

# Path to hooks.yml file
HOOKS_FILE_PATH="./hooks.yml"

# Path to webhook configuration file
WEBHOOK_CONF_PATH="/etc/webhook.conf"

# Replace /etc/webhook.conf with hooks.yml
cp "${HOOKS_FILE_PATH}" "${WEBHOOK_CONF_PATH}"


# Get the value of WEBHOOK_KEY from environment variables in .env file
WEBHOOK_KEY=$(grep 'WEBHOOK_KEY' "${ENV_FILE_PATH}" | cut -d '=' -f 2)

# Replace mysecr3tC0d3 with WEBHOOK_KEY in hooks.yml
sed -i "s/mysecr3tC0d3/${WEBHOOK_KEY}/g" "${WEBHOOK_CONF_PATH}"
