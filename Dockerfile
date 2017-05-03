FROM node:7

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app

COPY package.json npm-shrinkwrap.json $HOME/web/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/web
RUN npm install

EXPOSE 3000

# CMD ["npm", "run dev"]