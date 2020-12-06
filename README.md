# Amrita Alumni Portal Website

### Table of Contents
* [About this project](#about-this-project)
* [Developers](#developers)
* [Architecture Diagram](#architecture-diagram)
* [Technology Stack and Environment used](#technology-stack-and-environment-used)
    1. [Frontend](#frontend)
    2. [Backend](#backend)
    3. [Environment](#environment)
    4. [Session Management](#session-management)
    5. [Database](#database)
    6. [Dependency Resolver and Packaging](#dependency-resolver-and-packaging)
    7. [Continous Integration and Delivery](#continous-integration-and-delivery)
    8. [Other services](#other-services)
* [Directory Structure](#directory-structure)


### About this project:
This project is part of NetCentric Programming Academic course. We have built a sample web application for Alumni portal using Java Servlets, JSP, Java Beans, html, css, js. Industry practices and standards are followed in both development and deployment.

This project is built and deployed end-to-end in cloud using Amazon Web Services.
You can check out the deployed application [here](http://alumniportalbeanstalk-env.eba-a2zpu2ng.us-east-2.elasticbeanstalk.com/)


#### Developers
1. [R Kailash - CB.EN.U4CSE17123](https://github.com/M4SK3D)
2. [T Sai Trinadh - CB.EN.U4CSE17129]()
3. [K Keshavi - CB.EN.U4CSE17130](https://github.com/keshavikongara)
4. [S Prathiba - CB.EN.U4CSE17141](https://github.com/prathiba0311)
5. [Sreeramji K S - CB.EN.U4CSE17153](https://github.com/jam1729)
6. [Thanga Manickam M - CB.EN.U4CSE17161](https://github.com/Thangamgm2000)

#### Architecture Diagram
![Architecture Diagram](NCPArchitectureDiagram.jpg)

### Technology Stack and Environment used
The following tools and services are used in this project.

#### Frontend
Java Server Pages, CSS, java script are used to render frontend page from serverside. Form validations are done using js as client side scripting. Bootstrap is used as primary CSS framework.
JSTL (JavaServer Pages Standard Tag Library) and EL (Expression Language) are used to improve the usability and readability of JSP code.

#### Backend
The application is end to end server side scripted using Java servlets. The server is deployed in an Apache Tomcat 8.5 server which renders the dynamic JSP pages. Communication between pages is carried out using Java Beans classes.

#### Environment
* **SDK** : Java Correto 11
* **Packager** : Maven
* **Server** : Apache Tomcat 8.5
* **Deployed Environment** : 64bit Amazon Linux 2/4.1.3

#### Session Management
We have used http sessions to keep track of user login and session validation on serverside.

#### Database
A MySQL server deployed in AWS RDS is used as database to store application data.

#### Dependency Resolver and Packaging
Maven is used to resolve the dependencies in the project, build the code and package the war files.

#### Continous Integration and Delivery
To reduce the time on integration and deployment, we have used Continous Integration and Continous Delivery in this project. An AWS codepipeline is setup which gets triggered whenever a code is pushed to this repo. AWS codebuild runs the maven packaging to create war file. This war file is deployed in an AWS Elastic Bean stalk environment with Apache Tomcat 8.5 server in it.

#### Other services

We have used AWS S3 to store profile pictures and build articrafts. We have also used AWS Simple Email Service (SES) to send automated emails when user fills the query form.

#### Directory Structure
* Package Model: All helper java classes
* Package ServletPackage: All the servlets used in application
* pom.xml: Maven Dependencies and packaging
* web.xml: Server versioning, configuration and session properties
* webapp: Jsp, Css, js, static images

