FROM node:18-alpine3.15

ARG APPUSER=appuser

RUN apk add \
  bash \
  gettext \
  tzdata \
  jq \
  make \
  inotify-tools

RUN cp /usr/share/zoneinfo/Japan /etc/localtime

WORKDIR /app

# COPY package.json .
# COPY package.lock .
# RUN npm install

RUN adduser -D $APPUSER
USER $APPUSER
