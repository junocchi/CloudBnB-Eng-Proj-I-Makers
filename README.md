# MakersBnB Project Seed

This repo contains the seed codebase for the MakersBnB project in Ruby (using Sinatra and RSpec).

Someone in your team should fork this seed repo to their Github account. Everyone in the team should then clone this fork to their local machine to work on it.

## Setup

### Basic

```bash
# Install gems
bundle install

# Run the tests
rspec

# Run the server (better to do this in a separate terminal).
rackup
```

### Database

To set up the database on your local machine:

```bash
# make sure all dependencies are downloaded
bundle install

# create the databases on your machine
rake db:create

# create the tables from our migrations
rake db:migrate
rake db:migrate RACK_ENV="test"

# populate the tables with test data
rake db:seed
rake db:seed RACK_ENV="test"
```

Now if you check the tables in TablePlus you should see that the databases have been added (for both development and for test) and that the tables are now populated with dummy data.

## How to use

To access the database from the controller (app.rb) we can access any table as we would any object in ruby.

For example to retrieve all users as an array of objects:

```ruby
# we use the single form of the table name, which is plural (users)
users = User.all

puts users[0].id # => 1
puts users[0].username # =>'alex95'
puts users[0].firstname # => 'alex'
```

Or to return a single entry by its id:

```ruby
user = User.find(1) # will return the user with id 1
puts user.id # => 1
```

And to add to a table:

```ruby
User.create(
  username: 'alex95',
  firstname: 'Alex',
  lastname: 'Shabib',
  password: 'password',
  email: 'alex@gmail.com'
) # will just add the entry to the database

# ALTERNATIVELY

user = User.new(
  username: 'alex95',
  firstname: 'Alex',
  lastname: 'Shabib',
  password: 'password',
  email: 'alex@gmail.com'
)
# we create a new user and then save it to the database
user.save ? '/' : "Failed to add user!"
# if successful we will redirect, otherwise return a fail message
```

[This](https://guides.rubyonrails.org/active_record_basics.html) is really helpful and clear and goes over all the basics methods that we might need.
