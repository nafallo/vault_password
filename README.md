vault_password.sh
=========

This script is supposed to be used as input to the
`vault_password_file` configuration setting in ansible.cfg

Usage
--------------

You will still need a `.vault_password` file in your ansible
directory, but rather than only setting it static you can
set the first line to a service method and the last line
to a lookup that service supports, for example:

    lastpass
    `name of a note stored in your vault`

You can still specify a password directly in the file as
well, and if the file doesn't exist because you're not
using ansible vaults, we will output: password

License
-------

GPLv3

Author Information
------------------

This script was created in 2018 by Nafallo Bjälevik in his spare time.
