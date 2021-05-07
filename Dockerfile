FROM node:latest
# create a working directory inside our container 
WORKDIR /app
# add all files in current directory to our container dir
ADD . /app
# run npm install to install the modules required
RUN npm install
# command to execute when container starts
CMD node index.js


