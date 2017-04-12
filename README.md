# get-test
This application is a prototype of bug tracking system for software testing. The app is developed using ColdFusion/CFML and MySQL database and ready to deploy with ColdFusion server. 

## Installation  
### Requirements
> ColdFusion Server  
> MySQL Server
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
- [ ] Task list pagination *critical!*
- [x] Task history           

Feature       		   |		Description
---------------------|-------------------------------------------------------------

