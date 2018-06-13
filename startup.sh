#!/bin/bash
# A naive startup script
# Give everyone perms for kvm, we need to change this
sudo chmod 777 /dev/kvm
# These are needed for some of the nodejs tasks
sudo sysctl -w fs.inotify.max_user_instances=524288
sudo sysctl -w fs.inotify.max_user_watches=524288
sudo sysctl -w fs.inotify.max_queued_events=524288
# Standup docker containers
docker-compose down
docker-compose pull
docker-compose build
docker-compose up &
sleep 30
PGPASSWORD=guac psql -h 127.0.0.1  -U guac < initdb.sql.working.3
sleep 30
# Connect Appium to emulators
docker exec buildserver_appium_1 /root/platform-tools/adb connect android_23
docker exec buildserver_appium_1 /root/platform-tools/adb connect android_25
docker exec buildserver_appium_1 /root/platform-tools/adb connect android_27
# Install packages
#./connect_adb.sh
