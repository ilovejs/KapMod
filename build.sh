#!/usr/local/bash

unset CSC_LINK
unset CSC_KEY_PASSWORD
export CSC_IDENTITY_AUTO_DISCOVERY=false

yarn dist

open .

