FROM docker:latest

RUN apk add --no-cache python3-dev
RUN pip install docker-compose
