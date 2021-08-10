# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

README CreativeSoulmate

Ruby Version: 2.7.2
Rails Version: 5.2.5
Using PG as Database for Active Record

To run on development:

rails db:drop
rails db:create
rails db:migrate
rails db:seed

Seed is using several users as Producers and Designers
Use the following array in order to test app:

producers = [
    { email: 'cristobal@example.com', name: 'Cristobal Lecaros', password: 123123, track1: '01.mp3', track2: '02.mp3' },
    { email: 'juan@example.com', name: 'Juan Pablo', password: 123123, track1: '03.mp3', track2: '04.mp3'},
    { email: 'margot@example.com', name: 'Margot Robbie', password: 123123, track1: '05.mp3', track2: '06.mp3'},
]

designers = [
    { email: 'pedro@example.com', name: 'Pedro Soto', password: 123123, work1: '01.jpg', work2: '02.jpg' },
    { email: 'diego@example.com', name: 'Diego Ramirez', password: 123123, work1: '03.jpg', work2: '04.jpg'},
    { email: 'marcela@example.com', name: 'Marcela Valdebenito', password: 123123, work1: '05.jpg', work2: '06.jpg'},
]

Once DB its created and the seed has run, you can login using the afore mentioned credentials

To use the search query please use the following tags created by the seed:

tags = ["noise", "rock", "ambient", "bauhaus", "hip-hop", "decaux", "impresionist", "vulgar", "punk", "electronica"]

This is randomly executed, if a tag does not show any track or work on the search query, please try another

To deploy, log into heroku and run the database:

heroku restart
heroku pg:reset DATABASE
heroku run rake db:migrate
heroku run rake db:seed

then run heroku open to log in into the app with heroku
use the same credentials afore mentioned to log in as a producer or a designer

To log in into the admin use the following route:
http://localhost:3000/admin/login
and use the following credentials:

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 

Enjoy!