#!/bin/bash

# Change directory to the specified path
cd $HOME/nimble/nimble-miner-public

# Activate the virtual environment
source ./nimenv_localminers/bin/activate

# Run the make command with the specified test address
make run test addr=nimble1jzt4tyc7dp86lnqwmv0y6g4a8kl5j0wsgf2yw8
