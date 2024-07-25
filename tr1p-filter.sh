#!/bin/bash

# Read all input from stdin
input=$(cat)

# Try to format as JSON using jq
echo "$input" | jq . 2>/dev/null

# Check if jq succeeded
if [ $? -ne 0 ]; then
  # jq failed to parse input as JSON, check for HTML
  if echo "$input" | grep -qi "<html"; then
    # It's HTML, use lynx to display it
    echo "$input" | lynx -stdin
  else
    # Output original input
    echo "$input"
  fi
fi
