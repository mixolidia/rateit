class AlbumsController < ApplicationController

    def new
      @album = Album.new
    end

    def create
      @album = Album.new(params.require(:album).permit(:title, :artist, :description))
      if @album.save
        redirect_to album_path
      else
        render :new
      end
    end

    def show
      
    end

end
