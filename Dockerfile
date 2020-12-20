FROM alpine:latest

MAINTAINER EgoFelix <docker@egofelix.de>

RUN apk --no-cache add dnsmasq-dnssec

EXPOSE 53/tcp 53/udp 67/udp

ENTRYPOINT ["dnsmasq", "-k", "-N", "--max-cache-ttl=5", "--max-ttl=5"]
