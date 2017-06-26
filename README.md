# es-clean-index
Small docker for maintaining index of Elasticsearch cluster/node.
Supports ES version 5.x.

# Environment variables:
- INDEX_PREFIX (required): the prefix of the index to clean (e.g. logstash or zipkin)
- OLDER_THAN_IN_DAYS (optional, default: 7): the number of days to keep
- ELASTICSEARCH_HOST (required): the host of elasticsearch
