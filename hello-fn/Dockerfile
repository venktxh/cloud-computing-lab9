FROM ghcr.io/openfaas/of-watchdog:0.9.11 as watchdog

FROM node:18-alpine

WORKDIR /home/app

COPY . .

RUN npm install

COPY --from=watchdog /fwatchdog /usr/bin/fwatchdog

ENV fprocess="node handler.js"
ENV mode="http"
ENV http_upstream_url="http://127.0.0.1:3000"

EXPOSE 8080

CMD ["fwatchdog"]