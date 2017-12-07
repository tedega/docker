<source>
  @type forward
  port 24224
</source>
<match **>
  @type elasticsearch
  host elasticsearch
  port 9200
  index_name fluentd
  type_name fluentd
</match>
