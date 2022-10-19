FROM node:17-alpine as builder
WORKDIR /client
COPY client/ /client/
RUN npm install
RUN npm run build

FROM node:17-alpine
WORKDIR /app
COPY . .
COPY --from=builder /client/build/ /app/client/build
RUN npm ci --only=production
EXPOSE 3000
CMD [ "node", "server/index.js" ]