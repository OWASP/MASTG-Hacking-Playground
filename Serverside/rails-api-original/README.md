# Rails REST API

The REST API was build after the great tutorial from Austin Kabiru. The link can be found [here](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one).

## Pre-requisites

- [Install docker on Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-engine---community)

- The following packages need to be installed on an Ubuntu-based system to package the docker:

```bash
$ sudo apt-get install ruby
$ sudo apt-get install ruby-railties
$ sudo apt-get install ruby-bundler
$ sudo apt-get install build-essential patch ruby-dev liblzma-dev
$ sudo apt-get install libxslt-dev libxml2-dev zlib1g-dev --yes
$ sudo apt-get install libsqlite3-dev
```

## Docker

### Configuration to create your own container

Check the prerequisites, https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one#toc-prerequisites
You should ruby and rails installed with at least the following versions:

```
$ ruby -v
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]
$ rails -v
Rails 5.1.4
```

Go to this directory and execute the following commands:

```
bundle install
rails db:migrate RAILS_ENV=development
```

Use docker to build the rails API image 

```
docker build -t rails-api .
```

Now run the Rails REST API via docker 

```
docker run -p 80:3000 rails-api
```

Open your browser and open 127.0.0.1, you should see the Rails landing page. Now you can test the API with the commands below. 


## Rest API documentation 

  Build a todo list where users can manage their to-do lists and to-do items.

### Signup

* **URL**<br \>
    /signup

* **Method:**<br \>
    `POST`
  
* **Data Params**
	
    **Required:**<br \>
    `name=[string]`<br \>
    `email[string]`<br \>
    `password=[string]`
   
* **Success Response:**
  
  * **Code:** 200 <br />
    **Content:** `{
                    "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJleHAiOjE1MTI1Mzk5MzF9.2BF5UVKk_FvfZtUQ4E2sT7uWqMCDhAqMRvFnqsqJ4PQ",
                    "message": "Account created successfully"
				 }`

* **Error Response:**

  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{
                    "message": "Validation failed: ... can't be blank"
				 }`

* **Sample Call:**<br \>
    Below are the API requests sent by using HTTPie

```bash
	http POST :/signup name=user1 email=user1@email.com password=foobar
```


### Authentication - Login

TBD

### Authentication - Logout

TBD
 
### Todo 

CRUD operations for todos.

* **URL**<br \>
    /todos/:id

* **Method:**<br \>
    `GET` | `POST` | `DELETE` | `PUT`
  
*  **URL Params**
  
    **Required:**<br \>
    `id=[integer]`

* **Data Params**
	
    **Required:**<br \>
    `title=[string]`
   
* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
					"created_at": "2017-11-26T15:01:54.448Z",
					"created_by": "1",
					"id": 3,
					"title": "Betthoven",
					"updated_at": "2017-11-26T15:01:54.448Z"
				 }`
				  
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{
					"message": "Couldn't find Todo with 'id'=6"
				  }`


  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{
					"message": "Missing token"
				 }`


  * **Code:** 500 INTERNAL SERVER ERROR <br />
    **Content:** `{
					"error": "Internal Server Error",
					"exception": "#<JWT::DecodeError: Not enough or too many segments>",
					"status": 500,
					...
				 }`

* **Sample Call:**<br \>
    Below are the API requests sent by using HTTPie

```bash
	http POST :/todos title='My first to do' Authorization:'paste_your_auth_token_here'
	http :/todos/1 Authorization:'paste_your_auth_token_here'
	http PUT :/todos/1 title='My first to do?' Authorization:'paste_your_auth_token_here'
	http DELETE :/todos/1 Authorization:'paste_your_auth_token_here'

```

### Items

CRUD operations for items.


* **URL**<br \>
    /todos/:id/items/:id

* **Method:**<br \>
    `GET` | `POST` | `DELETE` | `PUT`

*  **URL Params**
  
    **Required:**<br \>
    `id=[integer]`

* **Data Params**
	
    **Required:**<br \>
    `name=[string]`<br \>
    `done=[boolean]`
   
* **Success Response:**
  
  * **Code:** 200 <br />
    **Content:** `{
					"created_at": "2017-12-05T06:12:32.282Z",
					"done": false,
					"id": 1,
					"name": "Listen to 6th Symphony",
					"todo_id": 3,
					"updated_at": "2017-12-05T06:12:32.282Z"
				 }`

* **Error Response:**

  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{
                    "message": "Validation failed: name can't be blank"
				 }`

  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{
					"message": "Missing token"
				 }`

  * **Code:** 500 INTERNAL SERVER ERROR <br />
    **Content:** `{
					"error": "Internal Server Error",
					"exception": "#<JWT::DecodeError: Not enough or too many segments>",
					"status": 500,
					...
				 }`

* **Sample Call:**<br \>
    Below are the API requests sent by using HTTPie

```bash
	http POST :/todos/1/items name='My first item' done=false Authorization:'paste_your_auth_token_here'
	http :/todos/1/items Authorization:'paste_your_auth_token_here'
	http PUT :/todos/1/items/1 done=true Authorization:'paste_your_auth_token_here'
	http DELETE :/todos/1/items/1 Authorization:'paste_your_auth_token_here'
```


