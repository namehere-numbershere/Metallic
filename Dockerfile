FROM node:latest
RUN npm install -g pnpm
WORKDIR /app

COPY . /app/

COPY package*.json /app/

RUN pnpm install

RUN pnpm run build

EXPOSE 8080

CMD ["pnpm", "start"]
