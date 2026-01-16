FROM docker.n8n.io/n8nio/n8n:2.3.6
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends jq bash && \
    rm -rf /var/lib/apt/lists/* && \
    npm --version
WORKDIR /data
COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
ENTRYPOINT ["bash", "/tmp/docker-entrypoint.sh"]
EXPOSE 5678/tcp
