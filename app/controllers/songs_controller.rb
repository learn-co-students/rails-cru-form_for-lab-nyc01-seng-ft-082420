class SongsController < ApplicationController
   
    before_action :set_song, except: [:create, :index, :new]
    
    def index
        @songs = Song.all
    end
    
    def new
        @song = Song.new
        @song.save
    end

    def create
        song = Song.create(params[:id])
        redirect_to song_path(song)
    end
    
    def show
    end

    def edit
    end

    def update
        @song.update(song_params)
        redirect_to song_path(@song)
    end


    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def set_song
        @song = Song.find(params[:id])
    end

    
end
