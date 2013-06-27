# Sinatra Twitter API Homework

## Instructions to get Twitter working
1. Create a Twitter account if you don't have one already
2. Sign in to the [Twitter Developer page](https://dev.twitter.com/user/login?destination=home)
3. Once signed in to the Developer page, go to "My Application" in the upper right hand corner, or [click here](https://dev.twitter.com/apps) to go directly there.
4. [Create a new application](https://dev.twitter.com/apps/new)
5. Give it whatever for a name (sinatra-twitter-example), whatever for a description, and whatever for a URL. Callback URL is blank. Agree to TOS and fill in the Captcha.
6. Now that your application is created, scroll to the bottom and click `Create my access token`
7. In the tabbed navigation under the name of your app, click "OAuth Tool"
8. You now have access to your API consumer key/secret and access token/secret
9. Copy the .env_example file to .env with the following command `cp .env_example .env`

## Documentation to Reference

* https://dev.twitter.com/
* https://github.com/sferik/twitter

## Objectives:

* Practice using an API as a datasource to populate a file and access information stored in that file.

## Story
A user should be able to see Tweets from a valid public twitter user
A user should be able to use a form to input the username of the twitter user
A user should be able to see images attached to a tweet if they exist
A user should be able to click through to the original tweet on Twitter
A user should see basic public information about the queried user

### Bonus
* A user should be able to see tweets another user has marked a 'favorite' on Twitter
* Write a "Rake task" (which you have a stub of here) that will save all of a user's tweets to a CSV file (you can only grab up to ~3600 tweets from any given user).


## Activity:

* Create a Sinatra application that fulfills the needs of the user story listed above
* The /tweets route should *optionally* accept a username as a parameter. Refer to the Sinatra docs for how to do optional parameters
* No CSV files needed
* If the bonus requirements of TV Series are stored
* Add a logo to your site as a static image stored in the /public directory
* Create a basic navigation in the layout.erb
* No CSS or Javascript please

## VERY IMPORTANT
Do not put your API keys in the .env_example file. Do not check them into Github
I have setup a .gitignore file for you which will skip the .env file
You have a limited number (~200) API requests per hour on Twitter. If you exceed these, it will return an error