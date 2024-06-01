FROM grafana/loki:latest

USER root

RUN mkdir -p /loki/index /loki/chunks /loki/wal && chmod -R 777 /loki

USER loki
ENTRYPOINT ["/usr/bin/loki", "-config.file=/etc/loki/local-config.yaml"]
