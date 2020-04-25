# python-slim-buster

# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.

# ---------------------- #
# Base Image for BUILDER
# ---------------------- #
FROM python:3.6 as builder

# Requirements
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /wheels jupyter pandas

# ---------------------- #
# Base Image for RUNTIME
# ---------------------- #
FROM python:3.6-slim-buster

LABEL Version=0.0.1
LABEL MAINTAINER="Wes Oler <wes-o@users.noreply.github.com>"

# Create directory for the app user
RUN mkdir -p /home/app

# Create user 'app' in /app
RUN groupadd app && useradd -g app app

# Create a home directory
ENV HOME=/home/app
ENV APP_HOME=/home/app/notebooks
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Install Requirements
COPY --from=builder /wheels /wheels
RUN pip install --no-cache /wheels/*

# Chown all the files to the app user
RUN chown -R app:app $HOME

# Change to user 'app'
USER app

# run server
CMD jupyter notebook --no-browser --port=8888 --ip=0.0.0.0

