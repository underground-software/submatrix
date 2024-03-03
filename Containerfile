FROM alpine:latest as submatrix

RUN apk add synapse

COPY homeserver.yaml /

VOLUME /ssl

EXPOSE 8448

CMD /usr/bin/synapse_homeserver -c /homeserver.yaml
