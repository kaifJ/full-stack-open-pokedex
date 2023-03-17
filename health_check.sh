#!/bin/bash

response=$(curl -s http://localhost:3001/health)

if [[ "$response" == *"ok"* ]]; then
  exit 0
else
  echo "Health check failed - expected 'ok' but received '$response'"
  exit 1
fi