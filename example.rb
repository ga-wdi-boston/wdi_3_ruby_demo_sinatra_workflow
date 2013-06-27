require 'rubygems'

# More documentation about this gem at https://github.com/ariejan/imdb
require 'imdb'

# Use the first search result. Here I'm searching for the "Jobs" movie.
my_movie = Imdb::Search.new("Jobs").movies.first
puts my_movie.title
puts my_movie.poster
puts my_movie.year

#### Methods on an individual movie
#company
#genres (multiple)
#length
#director
#mpaa_rating
#plot_synopsis
#tagline
#year
#poster
#release_date