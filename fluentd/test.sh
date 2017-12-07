IP=`docker inspect -f '{{.NetworkSettings.IPAddress}}' tedega-fluent-logger`
docker run \
  --log-driver=fluentd \
  --log-opt tag="docker.{{.ID}}" \
  --log-opt fluentd-address=${IP}:24224 \
  python:alpine echo Hello
