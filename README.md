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

API access
URL's
View list of surveys
http://localhost:3000/surveys/list
Create question
curl -X POST http://localhost:3000/questions --header "Content-Type: application/json" \
--data '{
   "survey_id": 1,
    "question": {
      "Content": "a sample title"
    }
  }'

Delete question

curl -X DELETE http://localhost:3000/questions/6