[![Build Status](https://travis-ci.com/mmncit/RuToDO.svg?branch=master)](https://travis-ci.com/mmncit/RuToDO)

# RuToDO

RuToDO is a simple RESTful JSON API built with Rails 5

### Live APP LINK : [GET /todos](https://fast-headland-29840.herokuapp.com/todos)

#### Refereces:

* [Simple Ruby on Rails 5 REST API From Scratch](https://www.youtube.com/watch?v=QojnRc7SS9o)
* [Creating a REST API with Rails](https://medium.com/@oliver.seq/creating-a-rest-api-with-rails-2a07f548e5dc)
* [scotch.io/tutorial](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one)
* [airpair.com](https://www.airpair.com/ruby-on-rails/posts/building-a-restful-api-in-a-rails-application)



## Features:

* Users can perform CRUD operations on their own to-do list
* Users can view all other do-list and items ordered by the newest first
* Users can perform queries on to-dos and items (not implemented yet!)

## Build instruction:

```bash
bundle install 
rails server
```
Configure database and fake data:
```bash
rails db:migrate
rails db:seed
```

How to run the test suite:
```bash
bundle exec rspec
```

## Usage

Check HTTP requests to an API with [httpie](https://httpie.org).

```bash

# GET /todos
$ http :3000/todos
# POST /todos
$ http POST :3000/todos title=Shopping created_by=Catherine
# PUT /todos/:id
$ http PUT :3000/todos/1 title=Hiking
# DELETE /todos/:id
$ http DELETE :3000/todos/1


# GET /todos/:todo_id/items
$ http :3000/todos/2/items
# POST /todos/:todo_id/items
$ http POST :3000/todos/2/items name='Listen to music' done=false
# PUT /todos/:todo_id/items/:id
$ http PUT :3000/todos/2/items/1 done=true
# DELETE /todos/:todo_id/items/1
$ http DELETE :3000/todos/2/items/1
```


## Technologies:

* Database: PostgresQL

* Test framework: RSpec

* Gems:
  * faker, factory_bot_rails (to create mocks)
  * shoulda-matchers (to write rspec for models)
  * figaro (Heroku-friendly rails app configuration)


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update the tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)