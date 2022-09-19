#Command 'build' will help to build your containers for run testing in container mode
build:
	@docker build -t ramzes-cypress-js:1.0.0 .

#Command 'local-run' will help to run your tests in containers 
test-local-containers:
	@docker run -i -v ${PWD}/ramzes-cypress-js -t ramzes-cypress-js:1.0.0 --spec cypress/e2e/1-getting-started/*.cy.js

test-report:
	$(info Make : Creating Allure test report)
	docker-compose -f docker-compose.allure.yml up