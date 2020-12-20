FROM alpine:latest

MAINTAINER EgoFelix <docker@egofelix.de>

RUN apk --no-cache add dnsmasq-dnssec

ENTRYPOINT ["dnsmasq", "-k", "-N", "--max-cache-ttl=5", "--max-ttl=5"]
