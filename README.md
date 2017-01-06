# README

* Ruby version  ruby 2.2.4p230

* Need to have Rails 5.0.1

* run bundle install on console

* run rails db:migrate on console

* For Run APP: run rails s on console

* For db:test run rails db:migrate RAILS_ENV=test on console

* How to run the test suite: rails test on console

* Models:   
  - Users: name, email, all required
  - Todos: title, description, state [0,1] "Pendeing" - "Resolve", user_id, all required

* Urls:
  - GET   /api/v1/users/:user_id/to_dos(.:format)     api/v1/to_dos#index {:defualts=>{:format=>"json"}}
  - POST  /api/v1/users/:user_id/to_dos(.:format)     api/v1/to_dos#create {:defualts=>{:format=>"json"}}
  - GET   /api/v1/users/:user_id/to_dos/:id(.:format) api/v1/to_dos#show {:defualts=>{:format=>"json"}}
  - PATCH /api/v1/users/:user_id/to_dos/:id(.:format) api/v1/to_dos#update {:defualts=>{:format=>"json"}}
  - PUT   /api/v1/users/:user_id/to_dos/:id(.:format) api/v1/to_dos#update {:defualts=>{:format=>"json"}}
  - GET   /api/v1/users(.:format)                     api/v1/users#index {:defualts=>{:format=>"json"}}
  - POST  /api/v1/users(.:format)                     api/v1/users#create {:defualts=>{:format=>"json"}}
  - GET   /api/v1/users/:id(.:format)                 api/v1/users#show {:defualts=>{:format=>"json"}}
  - PATCH /api/v1/users/:id(.:format)                 api/v1/users#update {:defualts=>{:format=>"json"}}
  - PUT   /api/v1/users/:id(.:format)                 api/v1/users#update {:defualts=>{:format=>"json"}}
