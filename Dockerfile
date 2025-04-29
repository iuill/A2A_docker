FROM python:3.12-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

RUN apt-get update && apt-get install -y git --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/google/A2A.git /app

WORKDIR /app/demo/ui

EXPOSE 12000

CMD ["uv", "run", "main.py"]
