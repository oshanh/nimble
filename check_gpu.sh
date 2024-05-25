#!/bin/bash

# Check if nvidia-smi is installed
if ! command -v nvidia-smi &> /dev/null
then
    echo "nvidia-smi could not be found. Please install NVIDIA drivers."
    exit
fi

# Run nvidia-smi to display the GPU status
nvidia-smi
