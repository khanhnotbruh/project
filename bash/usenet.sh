#!/bin/bash

echo "changing metric..."
INTERFACE=$1
if [ -z "$INTERFACE"];then
  echo "Error: pls pass device name"
  exit 1
fi
NAME=$(nmcli -g GENERAL.CONNECTION device show "$INTERFACE" 2>&1)
if ! NAME;then
  echo "$NAME"
fi

PREV_METRIC=$(nmcli -g GENERAL.CONNECTION device show "$NAME")
if [ -z "$PREV_METRIC" ];then
  echo ""
fi

