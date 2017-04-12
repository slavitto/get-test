# get-test
This application is a prototype of bug tracking system for software testing. The app is developed using ColdFusion/CFML and MySQL database and ready to deploy with the ColdFusion server. All features listed in the task specification are working, but there are some things that would be good to be done - see "Features" section.

## Requirements
> ColdFusion Server  
> MySQL Server

## Installation  
#### Files:
<pre>
db_working.sql          SQL dump of working DB for features testing  
db_create.sql           database creation script for clear installation  
index.cfm               main application file  
/inc                    app modules  
/less                   global styles and less.js  
Application.cfm         application-level settings and functions  
requesterr.cmf,  		
validationerr.cfm       error handling files  
</pre>
#### Test user accounts:
<pre>
login:        slavitto   
              johndoe  
              arnie 
Passwords:    gettest   
              (all the same)
</pre>

## Features

- [x] Authorization        
- [x] Profile editing      
- [x] Task adding
- [x] Task editing  
- [x] Task list            
- [ ] Task list pagination
- [x] Task history   
- [ ] View history notes

### Features Description

Feature       		         |	Description
---------------------------|-------------------------------------------------------------
**Authorization**          | The authorization function is made using the ColdFusion built-in HTTP-session support and password encryption
**Profile Editing**         | Users can change first name, last name and password
**Task Adding**             | Adding tasks of any status with the date/time, and author ID auto assigment
**Task Editing**            | Task edit feature made according to tracking process specifications. So if the task is already closed, user can not re-open it. And if the tasks are already "open", it can not again get the status of a "new"
**Task List**               | Tasks list prototype limited by 10 last entries, with the ascending and descenting sorting feature and field long value limitation
**Task History**            | Task history saves all task changes. Everyone who change a task is saved in the task history, task author ID is unchangeаble. 
