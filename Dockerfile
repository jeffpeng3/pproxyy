FROM gogost/gost

RUN mkdir -p /app

WORKDIR /app

COPY template.yaml template.yaml
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]