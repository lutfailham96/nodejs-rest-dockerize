FROM node:16.14.2-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY . .
RUN addgroup -S app && \
    adduser -S -g app app && \
    npm install && \
    chown app:app -R /usr/src/app
USER app
EXPOSE 3000
CMD ["npm", "start"]
