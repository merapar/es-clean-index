# es-clean-index
Small docker for maintaining index of Elasticsearch cluster/node.
It cleans data from a specific elasticsearch index older than a specified number of days.   
Supports ES version 5.x.

It can be run as follows:

    docker run -d -e INDEX_PREFIX="logstash" -e ELASTICSEARCH_HOST="elasticsearch" merapar/es-clean-index

# Environment variables:
- INDEX_PREFIX (required): the prefix of the index to clean (e.g. logstash or zipkin)
- ELASTICSEARCH_HOST (required): the host of elasticsearch
- OLDER_THAN_IN_DAYS (optional, default: 7): indicates all logs with a date exceeding this age can be deleted
