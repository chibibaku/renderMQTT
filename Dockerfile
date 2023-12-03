FROM alpine:latest
RUN apk --no-cache add mosquitto mosquitto-clients
EXPOSE 1883
ADD mosquitto.conf /mosquitto.conf
ENV PATH /usr/sbin:$PATH
USER user
ENTRYPOINT ["/usr/sbin/mosquitto", "-c", "/mosquitto.conf"]