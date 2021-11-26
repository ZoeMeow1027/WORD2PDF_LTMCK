# WORD2PDF

A simple jsp servlet web app for converting Word (.docx) to PDF.

# Table of Contents
- [Requirements](#Requirements)
  - [Just run project](#Just-run-project)
  - [For debugging](#For-debugging)
- [Config](#Config)
- [Getting started - How to install?](#Getting-started-how-to-install)
- [Testing](#Testing)

## Requirements

### Just run project

Below is these tools for building and debugging this web app.

If you have already installed them, just skip.

- Java JDK. I'm using Temurin jdk17 hotspot 17 - 17.0.1.1200.
  - You can get them from [chocolately](https://community.chocolatey.org/packages/Temurin#description).
- [Apache Maven - MVN](https://maven.apache.org/download.cgi) - I'm using v3.8.4
  - This tool is used for compile and package web apps. 
  - For instruction for install MVN, you can follow [here](https://maven.apache.org/install.html).
- [Apache Tomcat](https://tomcat.apache.org/download-90.cgi) - I'm using v9.0.54
  - This tool is used for create a server.
- [MySQL Community](https://dev.mysql.com/downloads/mysql)

### For debugging

- I will update later. Check back soon.

[\[Go to top\]](#Word2PDF)

## Config

This web app will load config from ["src/main/java/config/Config.java"](src/main/java/config/Config.java).

In next update, I will make it to load .ini file instead.

Config:
- dbUrl: URL for database connection
- dbUser: Server username
- dbPass: User's password
- dirTemp: Temporary directory for contains file upload and file download.
  - Note: Make sure this directory you choiced is readable, modifiable and writable. Otherwise, this web app will terminate immediately.

[\[Go to top\]](#Word2PDF)

## Getting started - How to install?

1. Create a database project in MySQL and named it "ltmck".
2. Use "ltmck", execute [table.sql](table.sql) to create two tables and a admin account (you need to edit this file if you want to create new and multi user):
  - Account: Store account information.
  - Word2PDF: Store conversion progress.
3. Edit web app config. [See here](#Config)
4. Compile it using MVN: ```mvn clean package```. If this is done successfully, in directory you will found:
  - WAR file: ```target/ltmcuoiky.war```
  - JSP directory: ```target/ltmcuoiky```
5. Use file and folder in step 4, deploy to tomcat servers (ex: My tomcat folder is ```D:\Programs\0.Programming\apache-tomcat-9.0.54-windows-x64\``` and set up server port is ```8080```):
  - Copy to tomcat server -> webapps folder (ex. ```D:\Programs\0.Programming\apache-tomcat-9.0.54-windows-x64\webapps```)
  - Start tomcat server: ```D:\Programs\0.Programming\apache-tomcat-9.0.54-windows-x64\bin\startup.bat```. Make sure you config tomcat server right before start.

You are done. Enjoy!

[\[Go to top\]](#Word2PDF)

## Testing

To check web app, just open browser and navigate to: http://127.0.0.1:(port)/ltmcuoiky/.

Ex. http://127.0.0.1:8080/ltmcuoiky/

[\[Go to top\]](#Word2PDF)
