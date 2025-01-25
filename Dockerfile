FROM devopsfaith/krakend:latest

COPY krakend.json /etc/krakend/krakend.json
COPY krakend2.json /etc/krakend/krakend2.json
COPY templates/endpoint.tmpl /etc/krakend/templates/endpoint.tmpl

EXPOSE 8080 8081

ENV CONFIG_FILE=/etc/krakend/krakend.json

CMD [ "sh", "-c", "krakend run -c $CONFIG_FILE" ]
