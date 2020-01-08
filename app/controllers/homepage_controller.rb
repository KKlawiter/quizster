class HomepageController < ApplicationController

	def index
		@song = Song.first
  	end
end
