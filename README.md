# Betrieb von Tedega in einer Docker Umgebung.
Dieses Repository enthält verschiedene Docker Container mit denen sich eine
Umgebung für den Betrieb von Tedega erstellen lässt.

Für die Orchestrierung der verschiedenen Container wird *Docker-Compose*
verwendet.

Sämtliche Images können mit folgenden Befehl neu gebaut werden, um so z.B
geänderte Konfiguration zu berücksichtigen, die beim Bau im Image hinterlegt
werden::

	./build.sh

Nach dem Bau kann die Umgebung dann mit::

	docker-compose up

gestartet werden.

## Fluentd
Sämtliche Logs sollen zentral von Fluentd erfasst werden und dann z.B an
Elasticsearch weitergeleitet werden.

## Elasticsearch
Elasticsearch erhält über Fluentd sämtliche gesammelten Logs und bietet
umfangreiche Möglichkeiten zur Analyse.

## Kibana
Kibana ist die UI zu Elasticsearch.
