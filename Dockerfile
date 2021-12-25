FROM node:alpine AS build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build

FROM node:alpine AS run
RUN addgroup -S peak-node && adduser -S peak-node -G peak-node
USER node
WORKDIR /app
COPY --from=build /app/build /app/build
COPY --from=build /app/static /app/static
COPY --from=build /app/package*.json /app
RUN npm ci --prod
EXPOSE 3000
ENTRYPOINT ["node", "build"]