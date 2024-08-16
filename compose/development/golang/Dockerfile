ARG GOLANG_VERSION=1.21.4-alpine

# define an alias for the specfic golang version used in this file.
FROM golang:${GOLANG_VERSION} AS golang

ARG BUILD_ENVIRONMENT=local
ARG APP_HOME=/app

ENV BUILD_ENV ${BUILD_ENVIRONMENT}

WORKDIR ${APP_HOME}

# Install required system dependencies
COPY ./compose/development/golang/entrypoint /entrypoint
RUN sed -i 's/\r$//g' /entrypoint
RUN chmod +x /entrypoint

COPY ./compose/development/golang/start /start
RUN sed -i 's/\r$//g' /start
RUN chmod +x /start

# copy application code to WORKDIR
COPY . ${APP_HOME}

ENTRYPOINT ["/entrypoint"]
