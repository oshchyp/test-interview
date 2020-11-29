<div style="width: 400px; margin: 0 auto;"><img src="https://www.adgoal.de/img/logo-b.png"></div>

# Introducing

The main aim of this test task is to create small API, with JWT authentication and fetching data from DB.

All constants value writing below in `UPPER_CASE` you can find in .env file.  

# Install

We have already prepared docker environment with nginx, php 7.4 and mysql database.
To run this project you only need to run command below.  
```bash
make install
``` 
If you not familiar with makefile or you haven't install it on you machine you can build docker manually. 

# Tasks

You need to implement two endpoint: authentication and fetching data

**Auth endpoint:**

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
Please, check if the auth data correct (do not save user in DB, use simple string comparison) and if yes return to client this json object:
```json
{
  "token": "<token_value>"
}
```
where `token_value` is the base64 encoded string which consist of 2 strings concatenated by dot `.`; Example:
```string
1646804985.b62e3d1b1c0cdef60f16dbae068dcc0ac7422ff51170fc33498ffa94880bd190
``` 
The first part is the timestamp when request was made.<br>The second part is SHA256 HMAC hash of the timestamp value computed with `APP_SECRET_KEY`


**Data endpoint**

```url
GET /api/stats
```

All request to this endpoint must contain header:
```http
Authorization: Bearer <token_value>
```
Token must be valid during `TOKEN_LIFETIME` seconds. If token is invalid or expired return 403 http code.

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

# P.S.
It would be good if your implementation would allow you to add new endpoints quickly and easy.
When you'll be ready create pull request. May the Force be with you.


