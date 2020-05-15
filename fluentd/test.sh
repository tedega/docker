set -x
IP=`docker inspect -f '{{.NetworkSettings.IPAddress}}' tedega-fluent-logger`
docker run \
  --log-driver=fluentd \
  --log-opt tag="docker.test" \
  --log-opt fluentd-address=localhost:24224 \
  python:alpine echo Hello
