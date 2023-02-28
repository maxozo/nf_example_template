#!/usr/bin/env bash
CWD1="$PWD"
parentdir="$(dirname "$CWD1")"
# export RUN_ID="${parentdir##*/}"
export RUN_ID="${PWD##*/}"
sample="$RUN_ID"
bsub -R'select[mem>4000] rusage[mem=4000]' -G hgi -J $sample -n 2 -M 4000 -o $sample.o -e $sample.e -q basement bash MultiOme/assets/deploy_scripts/nohup_start_nextflow_lsf.sh