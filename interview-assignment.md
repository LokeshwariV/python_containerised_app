# Data Platform Enablement Interview Assignment

## Introduction

You recently started working in the IT department of a powerplant, located in a town called Springfield. The plant, for many years, has not been operating optimally. Nothing has been done to improve this, until now. Your boss, Mr. Burns, has recently discovered that the powerplant, located in the rivalry town Shelbyville, has been able to save money by scaling their IT department and automating many manual tasks.
Wanting to do the same, Mr. Burns has started to come out with changes and new feature requests for the solution that you are working on. You start to notice that it is getting incrementally harder to implement, test, and deploy the changes.

## The Assignment

### The Task
The `./app` directory contains a python/flask based API. The API is a very simple application, with functionality that allow: getting, setting, and resetting Homer Simpson quotes within a redis database. Also included is a test script.

You are expected to, at minimum, deliver the following:

* Dockerfiles for the app and a redis database.
* Deployment definitions in the form of docker-compose or kubernetes manifests.
* Build script, makefile and/or CI/CD pipeline definition.

Additionally, the following topics can be added either as part of the delivery or with considerations in documentation (in no particular order). We are not expecting all topics to be covered, and we prefer deep coverage of few topics over broad coverage of many topics.

Core topics:

* Environment configuration
* Deployment strategy
* Reflection on how to do Infastructure as Code
* Testing

Stretch topics:

* Versioning (app and dependencies)
* Secrets management
* Monitoring
* Health / Readiness checks
* Ingress / Reverse proxy
* Branching strategy
* Git structure
* Security
* Storage and persistence
* Scalability
* Means of deployment
* Linting and static code analysis
* User Permissions
* Fault Tolerance

Feel free to change or restructure app files as you see fit.

Minimally, it should be possible to:

* Build Dockerfiles
* Run the application and redis database
* curl or otherwise reach API endpoints
