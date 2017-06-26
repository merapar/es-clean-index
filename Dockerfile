FROM python:2.7

RUN pip install elasticsearch-curator==5.1.1

ENV OLDER_THAN_IN_DAYS="7"

CMD curator --host elasticsearch delete indices --older-than $OLDER_THAN_IN_DAYS --prefix $INDEX_PREFIX --time-unit=days --timestring '%Y.%m.%d'
