FROM alpine:latest as class_matrix

RUN apk add synapse

COPY homeserver.yaml /

VOLUME /ssl

EXPOSE 8448

CMD /usr/bin/synapse_homeserver -c /homeserver.yaml
