FROM python:3.13-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

RUN apt-get update && apt-get install -y git build-essential python3-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/google/A2A.git /app

WORKDIR /app
