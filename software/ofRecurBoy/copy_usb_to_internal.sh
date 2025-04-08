#!/bin/bash

# Paths
EXTERNAL_PATH="/media/usb0"
INTERNAL_PATH="/home/pi"

# List of content folders to copy
FOLDERS=("VIDEO" "PATTERN" "EFFECT" "TEXT" "FONT")

# Get available space in kilobytes (kB)
AVAILABLE_SPACE=$(df --output=avail "$INTERNAL_PATH" | tail -n 1)

# Function to calculate total USB content size
calculate_needed_space() {
    local total_size=0
    for folder in "${FOLDERS[@]}"; do
        if [ -d "$EXTERNAL_PATH/$folder" ]; then
            folder_size=$(du -sk "$EXTERNAL_PATH/$folder" | awk '{print $1}')
            total_size=$((total_size + folder_size))
        fi
    done
    echo "$total_size"
}

# Get required space
REQUIRED_SPACE=$(calculate_needed_space)

# Compare space requirements
if [ "$REQUIRED_SPACE" -gt "$AVAILABLE_SPACE" ]; then
    echo "Not enough space! Required: $REQUIRED_SPACE kB, Available: $AVAILABLE_SPACE kB"
    exit 1  # Not enough space
fi

# Proceed with copying
for folder in "${FOLDERS[@]}"; do
    if [ -d "$EXTERNAL_PATH/$folder" ]; then
        echo "Syncing $folder from USB to internal storage..."
        mkdir -p "$INTERNAL_PATH/$folder"
        rsync -a --ignore-existing "$EXTERNAL_PATH/$folder/" "$INTERNAL_PATH/$folder/"
        if [ $? -ne 0 ]; then
            echo "Error occurred while copying $folder."
            exit 2  # Copy error
        fi
    else
        echo "Skipping $folder, not found on USB."
    fi
done

echo "Sync complete!"
exit 0  # Success

