docker run \
  -it \
  --rm \
  -p 24224:24224 \
  --name tedega-fluent-logger \
  -v $(pwd)/logdata:/fluentd/log \
  -e HOST_HOSTNAME=`hostname` \
  tedega-fluentd:latest
