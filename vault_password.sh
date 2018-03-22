#!/bin/dash
if [ -s '.vault_password' ]; then
  echo .vault_password
else
  lpass show --notes ansible_vault
fi
