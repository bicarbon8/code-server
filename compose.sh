#!/bin/bash
export USER="$(whoami)"
export PUID="$(id -u)"
export PGID="$(id -g)"
export HOME=$(bash -c "cd ~$(printf %q "$USER") && pwd")
export PWD="$(eval pwd)"

echo "USER: $USER"
echo "PUID: $PUID"
echo "PGID: $PGID"
echo "HOME: $HOME"
echo "PWD: $PWD"

mkdir -p $HOME/.config

docker-compose up -d