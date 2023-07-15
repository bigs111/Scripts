#!/bin/bash

# dev-sandbox.sh
# I use this script to quickly spin up dev sandboxes on my servers.
#
# this script is written for debian based systems.
#
apt update && apt upgrade -y
apt install build-essential -y
apt install python3-pip -y
apt install python3-venv -y
# ~~> keep adding to this as you need things
