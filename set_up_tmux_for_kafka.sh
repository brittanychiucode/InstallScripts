#!/bin/bash

tmux new -s kafka8 \; \
  new-window -n host-server \; \
  new-window -n docker-producer \; \
  new-window -n host-consumer
  select-window -t 1 \; \
  send-keys -t 1 'sudo fuser -k 9092/tcp && sudo rm -rf /tmp/kafka-logs && sudo /opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties' Enter