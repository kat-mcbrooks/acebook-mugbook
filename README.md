# MugBook
**Ruby on Rails | Sinatra | PostgreSQL | Capybara | Rspec | Heroku | GitHub Actions** 

In a team of 5, I built this Facebook-style web app. User authentication using Devise and image uploads are some of the features I worked on. This was the first time I had worked with Rails and we had less than 2 weeks to deliver the product - whislt challenging, it was great fun learning as a team and meeting client requirements. This was our first opportunity during Makers to practice CI/CD and we chose to do this on GitHub Actions, with app deployment using Heroku. I took a lead on making sure we followed agile working practices. We used Jira for managing, prioritising and assigning tickets and running sprints. We also had a daily figma board and ran retros for reflections and thoughts. 

## Features
* Users can sign up, sign in and sign out
* Users can edit their displayed profile information and account details
* Users can post to the public stream, and add images
* Users can only edit and delete their own posts. They can only edit posts within 10 minutes of creating them
* Posts display username and timestamp
* Users can upload a profile picture and add multiple pictures to posts
* Users can like and unlike posts


## How to run the app and tests
Clone the repository and then: 
```
> bundle install
> bin/rails db:create
> bin/rails db:migrate
> bin/rails server # Start the server at localhost:3000
```
```
> rspec
```
