FROM node:latest
# create a working directory inside our container 
WORKDIR /app
# Add package.json and package-lock.json to implement caching
ADD package*.json /app
# run npm install to install the modules required
RUN npm install
# add all files in current directory to our container dir
ADD . /app
# command to execute when container starts
CMD node index.js


