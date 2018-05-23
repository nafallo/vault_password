#!/bin/dash
# vault_password.sh by Nafallo Bjälevik <nafallo@ubuntu.com>
# Released under the GNU GPL v3 licence.
#
# This script is supposed to be used as input to the
# vault_password_file configuration setting in ansible.cfg
#
# You will still need a .vault_password file in your ansible
# directory, but rather than only setting it static you can
# set the first line to a service method and the last line
# to a lookup that service supports, for example:
#
# lastpass
# <name of a note stored in your vault>
#
# You can still specify a password directly in the file as
# well, and if the file doesn't exist because you're not
# using ansible vaults, we will output: password
#
if [ -s '.vault_password' ]; then
  if [ `head -n1 .vault_password` = "lastpass" ]; then
    lpass show --notes `tail -n1 .vault_password`
  else
    cat .vault_password
  fi
else
  echo "password"
fi
