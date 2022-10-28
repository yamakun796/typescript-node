FROM --platform=linux/amd64 16.18.0-slim
RUN npm isntall -g pnpm

WORKDIR /app
COPY package.json pnpm-lock.yaml .npmrc ./
RUN pnpm install&& pnpm store prune

COPY . .

RUN ["pnpm","start"]