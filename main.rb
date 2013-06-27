# We need rubygems for ever application
require 'rubygems'

# We use pry for debugging and inserting breakpoints
require 'pry'

# Sinatra is our framework/DSL for web applications this week
require 'sinatra'

# The reload reloads the application every time we make a change.
require 'sinatra/reloader' if development?



configure do
  $global_movies = ['Red', 'Green', 'Blue', 'Purple', 'Orange']
end

post '/new_movie' do
  # Because I've POSTed parameters here, I can access them in the params hash
  # In the form on the /colors view, I said the name of the parameter is "color"
  # All params pass as strings

  # Instead of a global variable, I want to write a a file
  # I want to ask the IMDB database for this info
  $global_movies << params[:movie]

  #I don't have a view on the POST.
  # I have a redirect to a GET
  redirect to('/movies')
end

get '/movie/:title' do
  # This would show my individual movie

  @title = params[:title]
  erb :movie
end

get '/movies' do
  # This is the 'colors' route
  # This would be correspond to the colors 'view'
  # We will create a colors.erb file in the /view directory

  # This line tells us to use the colors.erb view.
  # Any instance variables in this route (get '/colors')
  # will be available in the colors view
  # Local variables from this route however,
  # are not available in the view.
  # A variable like 'foo' is not availble
  # A variable like '@foo' is available

  @movies = $global_movies
  erb :movies
end