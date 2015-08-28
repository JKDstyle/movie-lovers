require 'imdb'


class Movie
	attr_accessor :poster
	def initialize(message)
		@message = message
		@poster = []
	end

	def search

		results = Imdb::Search.new(@message).movies
	
		index = 0
		while index < 9
			@poster.push(results[index].poster)
			index +=1
		end
		return @poster
	end
end