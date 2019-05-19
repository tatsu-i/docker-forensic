# start kibana
```bash
$ docker-compose up -d kibana
```

# convert image to plaso
```bash
$ docker-compose up plaso
```

# import dashboard
```
$ curl -XPOST http://127.0.0.1:5601/api/kibana/dashboards/import -H 'kbn-xsrf:true' -H 'Content-type:application/json' -d @dashboard-plaso.json
```
# export dashboard
```
$ curl -XGET "http://127.0.0.1:5601/api/kibana/dashboards/export?dashboard=fb9c6280-7952-11e9-ae9b-d30fee3fca0b" -o dashboard-plaso.json
```

