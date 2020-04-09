FROM node:13-alpine

ENV NODE_ENV=production
RUN apk add --no-cache git && \
    npm install -g matrix-hacks/matrix-puppet-slack.git && \
    apk del git
USER node
WORKDIR /usr/local/lib/node_modules/matrix-puppet-slack
CMD ["npm", "run", "start"]
