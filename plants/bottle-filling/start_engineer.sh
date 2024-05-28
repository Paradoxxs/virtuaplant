#!/bin/bash

echo "VirtuaPlant -- Juice filling factory"
cd /app/virtuaplant/plants/bottle-filling
echo "- Starting World View"
python ./world.py &
