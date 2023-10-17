
# get the base node image
FROM node:alpine as builder
# set the working dir for container
WORKDIR /frontend
# copy the json file first
COPY ./package.json /frontend
# install npm dependencies
RUN npm install
#install nodemon to provide hot-reloading functionality.
RUN npm install nodemon
# copy other project files
COPY . .
# build the folder
CMD [ "nodemon","npm", "run", "start" ]