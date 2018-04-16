#!/bin/dash
if [ -s '.vault_password' ]; then
  if [ `cat .vault_password` = "lastpass" ]; then
    lpass show --notes ansible_vault
  else
    echo .vault_password
  fi
else
  echo "password"
fi
