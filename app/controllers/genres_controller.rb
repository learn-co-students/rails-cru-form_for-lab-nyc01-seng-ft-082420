class GenresController < ApplicationController
    before_action :set_genre, except: [:create, :index, :new]
    
    def index
        @genres = Genre.all
    end
    
    def new
        @genre = Genre.new
        @genre.save
    end

    def create
        genre = Genre.create(params[:id])
        redirect_to genre_path(genre)
    end
    
    def show
    end

    def edit
    end

    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end


    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def set_genre
        @genre = Genre.find(params[:id])
    end
end
