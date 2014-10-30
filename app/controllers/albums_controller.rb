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
      @album = Album.find(params[:id])
    end

    def edit
      @album = Album.find(params[:id])
    end

    def upvote
      @album = Album.find(params[:id])
      @album.votes.create
      redirect_to(album_path)
      # @album.rating += 1
      # @album.save
    end

end
