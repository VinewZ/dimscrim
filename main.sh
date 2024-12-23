#!/bin/bash

# Check if a brightness value is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <brightness>"
  echo "Provide a brightness value between 0 and 1."
  exit 1
fi

# Validate the brightness value
brightness=$1
if (( $(echo "$brightness < 0" | bc -l) )) || (( $(echo "$brightness > 1" | bc -l) )); then
  echo "Error: Brightness value must be between 0 and 1."
  exit 1
fi

# Get the names of connected monitors
monitors=$(xrandr --query | grep " connected" | awk '{print $1}')

# Check if any monitors are found
if [ -z "$monitors" ]; then
  echo "No monitors detected."
  exit 1
fi

# Set brightness for each monitor
for monitor in $monitors; do
  echo "Setting brightness of $monitor to $brightness"
  xrandr --output "$monitor" --brightness "$brightness"
done

echo "Brightness adjustment complete."
