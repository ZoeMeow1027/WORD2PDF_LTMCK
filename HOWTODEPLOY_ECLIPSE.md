## WORD2PDF - How to deploy - With Eclipse

### 1. Set up database

1.1. Create a database project in MySQL and named it "ltmck".

![Create database](img/1.png)

1.2. Use "ltmck", execute query in [table.sql](table.sql) to create two tables and a admin account (you need to edit this file if you want to create new and multi user):
   - Account: Store account information.
   - Word2PDF: Store conversion progress.

After execute query file, it will look like this:

![Completing database](img/2.png)

### 2. Set up project using Eclipse

2.1. Download project as zip

![Download Project as zip](img/6.png)

2.2. Open Eclipse, Click ```File``` -> ```Open Projects from File System...```

![Open project from Eclipse](img/7.png)

2.3. Next to Import source, click ```Archive...``` and locate to zip file you downloaded from step 2.1.

![Open project from Eclipse](img/8.png)

2.4. Check folder with tag as "Eclipse project". Uncheck another folders. Click ```Finish``` to continue.

![Open project from Eclipse](img/9.png)

2.5. To ensure successful import, right-click to project, then choose ```Maven``` -> ```Update Project...``` You can quickly press ```Alt + F5```.

![Open project from Eclipse](img/10.png)

2.6. This dialog will shown, just click ```OK``` to continue.

![Open project from Eclipse](img/11.png)

2.7. Config project. [View in README.md](README.md#Config)

### 3. Create tomcat server (if you don't have exist)

![Open project from Eclipse](img/12.png)

![Open project from Eclipse](img/13.png)

![Open project from Eclipse](img/14.png)

Click ```Add All >>``` to config all project for server, then click ```Finish```.

![Open project from Eclipse](img/15.png)

### 4. Run this web app

4.1. Once done, navigate to file ```src``` -> ```main``` -> ```webapp``` -> ```login.jsp```. Right-click this file and choose ```Run as``` -> ```Run on Server```.

![Open project from Eclipse](img/16.png)

4.2. Click server you created on step 3 and click ```Finish```.

![Open project from Eclipse](img/17.png)

