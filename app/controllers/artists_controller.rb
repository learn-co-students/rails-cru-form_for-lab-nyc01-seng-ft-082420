class ArtistsController < ApplicationController
    before_action :set_artist, except: [:create, :index, :new]
    
    def index
        @artists = Artist.all
    end
    
    def new
        @artist = Artist.new
        @artist.save
    end

    def create
        artist = Artist.create(params[:id])
        redirect_to artist_path(artist)
    end
    
    def show
    end

    def edit
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end


    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def set_artist
        @artist = Artist.find(params[:id])
    end
end
