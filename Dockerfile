FROM python:3.7-alpine

RUN apk add --no-cache tini

COPY mockdog.py mockdog.py

EXPOSE 8125/UDP
ENTRYPOINT ["tini", "--"]
CMD ["python", "mockdog.py"]
