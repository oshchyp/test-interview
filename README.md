<div style="width: 400px; margin: 0 auto;"><img src="https://www.adgoal.de/img/logo-b.png"></div>

# Introducing

The main aim of this test task is to create small API, with JWT authentication and fetching data from DB.

All constants value writing below in `UPPER_CASE` you can find in .env file.  

# Install

We have already prepare docker environment with nginx, php 7.4 and mysql database.
To run this project you only need to run command below.  
```bash
make install
``` 
If you not familiar with makefile or you haven't install it on you machine you can build docker manually. 

# Tasks

You need to implement two endpoint: authentication and fetching data

1. Auth endpoint:

```url
POST /api/auth
``` 

This endpoint must receive json object
```json
{
  "user": USER_LOGIN,
  "password": USER_PASSWORD
}
```
check if the auth data correct (please, do not save user in DB, use simple string comparison) and return to client JWT token. 
All information about JWT you can find on https://jwt.io/ 

2. Data endpoint

```url
GET /api/stats
```

All request to this endpoint must contain header:
```json
Authorization: Bearer <JWT>
```
JWT must be valid during `JWT_LIFETIME` seconds

In `adgoal` database you can find table `programs`. The schema of this table:
```mysql
create table programs (
  id int NOT NULL AUTO_INCREMENT,
  network_id int,
  active int,
  rate int,
  PRIMARY KEY (id)
);
```

Please, select without joins and subqueries ALL networks which has active programs and ALL OF THEM has rate > 10.

Return data as json array.

When you'll be ready create pull request.


