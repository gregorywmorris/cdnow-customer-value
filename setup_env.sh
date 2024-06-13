#!/bin/bash

# Create a new conda environment with RAPIDS, Python 3.11, and CUDA 12.2
conda create -n cdnow -c rapidsai -c conda-forge -c nvidia  \
    rapids=24.06 python=3.11 cuda-version=12.2 -y

# Activate the new conda environment
source $(conda info --base)/etc/profile.d/conda.sh
conda activate cdnow

# Install PDM (Python Development Management)
pip install pdm

# Install project dependencies specified in the pyproject.toml file (ensure this file exists)
pdm install

# Confirm installations
echo "Environment and dependencies set up successfully."