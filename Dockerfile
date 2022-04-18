FROM node:alpine3.14
ENV NODE_ENV=production
ENV PORT=80

WORKDIR /app
COPY . .

RUN npm install --silent
RUN npm run build

EXPOSE 80
CMD ["npm","start"]
