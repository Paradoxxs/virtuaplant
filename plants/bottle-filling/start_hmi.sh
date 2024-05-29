#!/bin/bash

echo "VirtuaPlant -- Juice filling factory"
cd /app/virtuaplant/plants/bottle-filling
echo "- Starting HMI"
python ./hmi_eng.py &
