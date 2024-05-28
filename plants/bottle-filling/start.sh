#!/bin/sh

echo "VirtuaPlant -- Bottle-filling Factory"
cd /app/virtuaplant/plants/bottle-filling
echo "- Starting World View"
./world.py &
echo "- Starting HMI"
./hmi.py &
