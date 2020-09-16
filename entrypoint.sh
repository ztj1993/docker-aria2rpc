#!/bin/bash

export ARIA2C_ENABLE_RPC=true
export ARIA2C_RPC_LISTEN_ALL=true
export ARIA2C_RPC_LISTEN_PORT=6800
export ARIA2C_RPC_ALLOW_ORIGIN_ALL=true
export ARIA2C_LOG=-
export ARIA2C_CONSOLE_LOG_LEVEL=info
export ARIA2C_DISABLE_IPV6=true


mkdir -p /etc/aria2c
echo '' > /etc/aria2c/env.conf

for i in $(env)
do
  [[ $i =~ ^ARIA2C-* ]] || continue
  key=$(echo $i | awk -F"=" '{print $1}')
  val=$(echo $i | awk -F"=" '{print $2}')
  key=${key,,}
  key=${key//_/-}
  key=${key/#aria2c-/}
  echo "$key=$val" >> /etc/aria2c/env.conf
done

exec "$@"
