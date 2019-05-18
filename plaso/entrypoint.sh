#!/bin/sh
log2timeline.py output.plaso /data/*
# HELP list timezone
# psort.py -z list
psort.py -o json_line -z Japan -a -w /data/output.json output.plaso
