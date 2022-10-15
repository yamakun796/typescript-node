FROM 16.18.0-slim
WORKDIR /app
COPY package.json ./
RUN pnpm install
COPY . .
RUN ["pnpm","start"]