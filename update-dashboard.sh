#!/bin/bash

echo ""
echo "========================================"
echo "  Inbound Dashboard Data Updater"
echo "========================================"
echo ""

# Navigate to scripts directory
cd "$(dirname "$0")/scripts"

# Run the update script
python3 update-data.py

if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Python script failed."
    echo "Make sure Python 3 is installed and openpyxl is available."
    echo "Run: pip3 install openpyxl"
    exit 1
fi

echo ""
echo "Dashboard updated! Refresh your browser to see changes."
echo ""
