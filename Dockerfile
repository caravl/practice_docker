FROM node:7
RUN mkdir /practice_docker
ADD . /practice_docker
WORKDIR /practice_docker
RUN npm i
EXPOSE 80
CMD ["npm", "start"]

# getting a package from DockerHub (a repository for free Docker containers) called node:7
# with that container, we go inside of it and make a directory called our repo name
# after that, we are copying the file from our current directory (.) on our current machine to the repo name file in the container. after this, we cd into the directory
# from inside, the file is running 'npm i' to download all dependencies
# we are exposing port 80 since all ports are default closed on containers
# running 'npm start'

# our server.js file should be running which starts our server and database

# essentially, the Dockerfile is written to get your server up and running

# to get the database in its own container, we need to make a docker-compose.yml file - this file tells multiple containers how to work in a group/synchronized - this file is very important and a HUGE security risk - WHEN YOU USE A DOCKER-COMPOSE.YML FILE FOR A REPO, IT IS BEST PRACTICE TO EITHER KEEP THE DOCKER-COMPOSE.YML FILE IN A DIRECTORY OUTSIDE OF THE REPO, BC THE DOCKER-COMPOSE.YML FILE TAKES THE PLACE OF A .ENV FILE, SO ACCIDENTALLY COMMITTING THIS FILE TO GITHUB GIVES THE WORLD ALL OF YOUR KEYS AND ENVIRONMENT VARIABLE
