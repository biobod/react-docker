FROM node:14.15.4

WORKDIR /code

ENV PATH /code/node_modules/.bin:$PATH

COPY package.json /code/package.json
COPY package-lock.json /code/package-lock.json

RUN npm install

COPY . /code

CMD ["npm", "start"]

#  docker run -p 3001:3000 --name r-d -it --rm react-docker
# -p - port use port 3000 for docker container and 3001 for the host
# --name add own (r-d) name istead will be added random one
# -it - ineractive move. Not sure if it's needed
# --rm - remove container (ps - process) after exit
# react-docker - the name of image
# also 'docker ps -a' (show containers, -a - means show all)
# 'docker images' - show images