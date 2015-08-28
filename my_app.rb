require "sinatra"
require "sinatra/reloader"
require 'pry'
require_relative './lib/movie.rb'



get '/'  do
	erb :index
	
end

post '/form' do
	user_input = params[:message]
	movie = Movie.new(user_input)
	@movie_poster = movie.search
	erb :poster
	
end

