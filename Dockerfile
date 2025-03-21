FROM ghcr.io/astral-sh/uv:python3.12-alpine

WORKDIR /bot

COPY . .

RUN uv sync --frozen --no-dev

CMD ["uv", "run", "-m", "bot"]

