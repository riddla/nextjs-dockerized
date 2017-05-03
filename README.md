# Dockerized [next.js](https://github.com/zeit/next.js/) boilerplate

## Resources

* http://jdlm.info/articles/2016/03/06/lessons-building-node-app-docker.html
* https://github.com/nodejs/docker-node

## Docker

### Prerequisites

`docker-compose build`

### Start

`docker-compose up -d`  
`open -a "Google Chrome" http://localhost:3000`

### Debug

`docker-compose logs`

### Installing more npm dependencies

```
docker-compose run --rm web /bin/bash`

$ npm install glamorous --save
$ exit

git add package.json npm-shrinkwrap.json
(git commit)

docker-compose build
```
