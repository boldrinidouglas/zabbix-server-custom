FROM zabbix/zabbix-server-pgsql:ubuntu-7.4-latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl jq dnsutils whois iputils-ping netcat-openbsd \
        traceroute mtr wget ca-certificates procps lsof && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER 1997
