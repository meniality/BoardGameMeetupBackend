# README

* Ruby version: ruby 2.6.1
  
  Dependencies: rails 6.0.2
                rack-cors 1.1.0
                rest-client 2.1

* Database creation: created with a postgres database. You will need to run these commands in your terminal to get it running.
  1. rails db:create
  2. rails db:migrate
  3. rails db:seed

* The way the front end is set up is to have this running on http://localhost:3000/ to do this in terminal run
  rails s
  
This is the backend desiqned to work with my custom built front end for the Board Game meetup which can be found
  https://github.com/meniality/BoardGameMeetupFrontend
  
This is a RESTful backend database used to hold a list of user created meetups for Board Gameing.A user can select a location, date and time, and boardgame. After posted they can add or remove created user to this meetup. The meetup tracks the current amount of players and displays that on the main page. A meetup can also be deleted once it has been comlpeted.

Utilized activeRecord to estasblish relationships between information in the database. Also implemented rest-client in order to bring in the 100 current top boardgames from an outside API (https://www.boardgameatlas.com/api)

This was my first use of Vanilla JavaScript and CSS and does not include any auth which will be added in a future update. This would allow The database to store a user information, past just thier name and allow only the creater of a meetup to delete it. 
