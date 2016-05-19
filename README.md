# DIYE (Do it yourself empires)

Name is temporary, maybe "Clash of Empire Legends Saga" is an original name...


## Docker

Docker images based on https://jbhannah.net/articles/rails-development-with-docker/

Download git repository and run in that folder:
$ docker-compose run --rm web bundle
$ docker-compose run --rm web bin/rake db:setup
$ docker-compose up


To initialize a fresh new project:
create Gemfile with:

source 'https://rubygems.org'
gem 'rails'


Then run: 
$ docker-compose run --rm web bundle install
$ docker-compose run --rm web bundle exec rails new . -d postgresql
Overwrite Gemfile