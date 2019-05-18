#!/bin/sh
log2timeline.py --partitions all --vss_stores all --workers ${WORKER_NUM:-2} /data/output.plaso /data/*.E01
# HELP list timezone
# psort.py -z list
psort.py -o json_line -z Japan -a -w /data/output.json /data/output.plaso
