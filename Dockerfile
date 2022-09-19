#Base image taken from:https://github.com/cypress-io/cypress-docker-images
FROM cypress/browsers:node16.14.2-slim-chrome103-ff102
#Create the folder where our project will be stored
RUN mkdir /ramzes-cypress-js
#We make it our workdirectory
WORKDIR /ramzes-cypress-js
#Let's copy the essential files that we MUST use to run our scripts.
COPY ./package.json .
COPY ./cypress.config.js .
COPY ./cypress ./cypress
#Install the cypress dependencies in the work directory
RUN npm install
#Executable commands the container will use[Exec Form]
ENTRYPOINT ["npx","cypress","run"]
#With CMD in this case, we can specify more parameters to the last entrypoint.
CMD [""] 