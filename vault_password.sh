#!/bin/dash
if [ -s '.vault_password' ]; then
  if [ `head -n1 .vault_password` = "lastpass" ]; then
    lpass show --notes `tail -n1 .vault_password`
  else
    cat .vault_password
  fi
else
  echo "password"
fi
