# We need rubygems for ever application
require 'rubygems'

# We use pry for debugging and inserting breakpoints
require 'pry'

# Sinatra is our framework/DSL for web applications this week
require 'sinatra'

# The reload reloads the application every time we make a change.
require 'sinatra/reloader' if development?

configure do
end

get '/' do
end