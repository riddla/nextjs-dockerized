FROM node:7

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app

ENV APP_DIR=$HOME/web/

COPY package.json npm-shrinkwrap.json $APP_DIR
RUN chown -R app:app $HOME/*

USER app

WORKDIR $APP_DIR
RUN rm -rf node_modules \
  && npm install

EXPOSE 3000
