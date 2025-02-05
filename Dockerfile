FROM node:14-alpine
USER ${USER}
COPY  package*.json  ./
COPY . ./
RUN npm install  \
  && npm run build \
  && pwd \
  && ls -al
EXPOSE 5000
CMD npm start