#!/bin/sh
rm /data/output.*
log2timeline.py --partitions all --no_vss --workers ${WORKER_NUM:-2} --buffer_size 2048M --profiling_sample_rate 10000 --status_view none --disable_zeromq /data/output.plaso /data/*.E01
rm /data/output.json
psort.py -o elastic --server elasticsearch --port 9200 --doc_type _doc --index_name logstash-plaso /data/output.plaso
