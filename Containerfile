FROM alpine:latest as class_matrix

RUN apk add synapse

COPY homeserver.yaml /

CMD /usr/bin/synapse_homeserver -c /homeserver.yaml
