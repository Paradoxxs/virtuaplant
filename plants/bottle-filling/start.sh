#!/bin/bash

echo "VirtuaPlant -- Bottle-filling Factory"
cd /app/virtuaplant/plants/bottle-filling
echo "- Starting World View"
python ./world.py &
echo "- Starting HMI"
python ./hmi.py &
