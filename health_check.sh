#!/bin/bash

response=$(curl https://fullstackopen-kaif-pokemon.fly.dev//health)
health_response="ok"

if [[ "$response" == "$health_response"]]; then
  exit 0
else
  echo "Health check failed - expected 'ok' but received '$response'"
  exit 1
fi