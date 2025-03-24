FROM node:alpine

WORKDIR /app

RUN npm install -g pnpm

COPY package.json pnpm-lock.yaml ./

RUN pnpm install

COPY . .

EXPOSE ${ZAP_API_PORT}

CMD ["pnpm", "nx", "serve", "zap-api"]
