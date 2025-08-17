#!/bin/bash

# Get HTTP status code from localhost
status_code=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)

echo "HTTP status code is: $status_code"

# Optional: check if status code indicates success
if [[ "$status_code" -eq 200 ]]; then
  echo "Server is OK."
else
  echo "Server returned status code $status_code."
fi