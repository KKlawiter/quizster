class SongsController < ApplicationController

	def index
		@song = Song.order("RANDOM()").first
  	end

  	def new 
  		@song = Song.new
  	end


  	def create
    	Song.create(song_params)
    	redirect_to root_path
  	end

  private

  def song_params
    params.require(:song).permit(:name, :artist, :genre)
  end
end
