FROM eclipse-mosquitto:latest
COPY ./mosquitto.conf /mosquitto.conf
EXPOSE 1883
CMD ["mosquitto", "-c", "/mosquitto.conf"]