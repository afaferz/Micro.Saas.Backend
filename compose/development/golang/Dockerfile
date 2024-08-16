ARG GOLANG_VERSION=1.23.0-alpine

# define an alias for the specific golang version used in this file.
FROM golang:${GOLANG_VERSION} AS golang

ARG BUILD_ENVIRONMENT=development
ARG APP_HOME=/app

ENV BUILD_ENV ${BUILD_ENVIRONMENT}
ENV GO111MODULE=on

WORKDIR ${APP_HOME}
COPY .. ${APP_HOME}

FROM golang AS golang-build-stage
RUN go install github.com/air-verse/air@latest
RUN go mod tidy

COPY ./compose/development/golang/entrypoint /entrypoint
RUN sed -i 's/\r$//g' /entrypoint
RUN chmod +x /entrypoint

COPY ./compose/development/golang/start /start
RUN sed -i 's/\r$//g' /start
RUN chmod +x /start

ENTRYPOINT ["/entrypoint"]
