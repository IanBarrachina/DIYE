# DIYE (Do it yourself empires)  

Name is temporary, maybe "Clash of Empire Legends Saga" is an original name...  


## INSTALATION  

### Docker and Docker Compose
First, install Docker and docker-compose:  
https://docs.docker.com/engine/installation/  
https://docs.docker.com/compose/install/  

### Initialize containers

Docker images are based on https://jbhannah.net/articles/rails-development-with-docker/  

1. Download this git repository  
  * If you are behind a proxy, add this to the begining of the Dockerfile (after the FROM line):  
    ```
    ENV HTTP_PROXY 'http://89.167.129.32:80'  
    ENV HTTPS_PROXY 'https://89.167.129.32:80'  
    ENV http_proxy 'http://89.167.129.32:80'  
    ENV https_proxy 'https://89.167.129.32:80'  
    ```
2. Create new Rails project (if you have already one in that folder, skip this step)  
  1. Create Gemfile containing:  
    ```
    source 'https://rubygems.org'  
    gem 'rails'  
     ```
  2. Run:  
    ```
    $ docker-compose run --rm web bundle install  
    $ docker-compose run --rm web bundle exec rails new . -d postgresql  
    ```
  3. Overwrite Gemfile when asked  
3. Run in the cloned folder:  
  ```
  $ docker-compose run --rm web bundle  
  $ docker-compose run --rm web bin/rake db:setup  
  $ docker-compose up  
  ```

## Run commands  

In a separate console, run rails commands like this:  
```
$ docker-compose run --rm web bin/rake routes  
$ docker-comopse run --rm web bundle update rails  
$ docker-compose run --rm web bin/rails c  
```