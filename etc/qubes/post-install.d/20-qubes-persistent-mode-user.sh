#!/bin/sh --

## Copyright (C) 2025 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

## TODO: Qubes R4.3 and above: Once Qubes R4.2 support has been deprecated,
##       the following 'if' clause should be removed.

qubes_version="$(cat /usr/share/qubes/marker-vm | grep -v '^#')"
if printf "%s\n" "${qubes_version}" | grep -q -e '^4.3' -e '^4.4' -e '^4.5' -e '^4.6' ; then
   qvm-features-request boot-mode.kernelopts.user=''
   qvm-features-request boot-mode.name.user='PERSISTENT Mode - USER Session'
   qvm-features-request boot-mode.active='user'
   qvm-features-request boot-mode.appvm-default='user'
fi
