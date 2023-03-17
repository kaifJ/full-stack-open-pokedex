#!/bin/bash

response=$(curl -s https://wispy-dream-7321.fly.dev/health)

if [[ "$response" == *"ok"* ]]; then
  exit 0
else
  echo "Health check failed - expected 'ok' but received '$response'"
  exit 1
fi