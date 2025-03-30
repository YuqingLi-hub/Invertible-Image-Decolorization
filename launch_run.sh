#!/bin/bash

# Get job name from command-line argument or default to "IDNtest_default"
JOB_NAME=${1:-IDNOri_default}

# Submit the job dynamically with the correct job name
sbatch --job-name="$JOB_NAME" run.sh "$JOB_NAME"
