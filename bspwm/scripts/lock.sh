#!/bin/bash

export XSECURELOCK_AUTH_BACKGROUND_COLOR=rgb:32/36/40
export XSECURELOCK_NO_COMPOSITE=1
export XSECURELOCK_PASSWORD_PROMPT=cursor
export XSECURELOCK_SHOW_HOSTNAME=0
export XSECURELOCK_SHOW_USERNAME=0

(sleep 1; xset s 10; xset dpms force off) & xsecurelock
xset s 3600
xset -dpms
