#!/bin/sh

vault --version

vault_key=$VAULT_KEY
vault_address="${VAULT_ADDRESS:-http://localhost:8200}"

vault operator unseal --address $vault_address $vault_key 

# python3 /vault/main.py