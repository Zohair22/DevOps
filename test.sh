#!/bin/bash

name="Zohair"
echo "Hey $name, today is $(date)"
echo "Your current directory is: $(pwd)"

if [ -d "logs" ]; then
  echo "Logs folder already exists."
else
  echo "Creating logs folder..."
  mkdir logs
fi
