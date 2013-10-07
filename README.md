# README

This is the companion code for the Code Schools Ember course. This showcases the code used in the slides.

## Setup

This is a Ruby on Rails application, so in order to run it you'll need to have Ruby 1.9.3. Here's the setup you'll need to do to in order to see the examples.

First off, you'll need to have Ruby installed. We recommend using either [rbenv](https://github.com/sstephenson/rbenv) or [RVM](https://rvm.io/), but your system Ruby will suffice as well. Code School has a [Code TV](https://www.codeschool.com/code_tv/rvm) on using RVM as well.

With Ruby installed, make sure to install the bundler gem.

```
$ gem install bundler
```

Next, download or clone this repository, change directory into it, and `bundle`.

```
$ git clone git@github.com/codeschool/EmberDemo.git
$ cd EmberDemo
EmberDemo $ bundle install
```

Next, setup the database -- which contains information on the code samples used in the course.

```
EmberDemo $ bundle exec rake db:setup
```

## Running

After that, you should be all set to run the application:

```
EmberDemo $ bundle exec rails s
```

This will start the application on port 3000. Open up [http://localhost:3000](http://localhost:3000) in a browser and head to any code sample.