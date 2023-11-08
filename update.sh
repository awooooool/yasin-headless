#!/bin/bash

docker compose exec yasin /root/gameupdater.sh
docker commit $(docker compose ps -q yasin) awooooool/yasin
docker image prune
docker compose up -d --force-recreate
