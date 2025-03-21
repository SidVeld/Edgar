FROM ghcr.io/astral-sh/uv:alpine

WORKDIR /bot

COPY . .

RUN apk add gcc python3-dev musl-dev linux-headers

RUN uv sync --frozen

CMD ["uv", "run", "-m", "bot"]

