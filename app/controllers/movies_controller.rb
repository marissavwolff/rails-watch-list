class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    
  end

  def new
    @list = List.find(params[:list_id])
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.list = @list
    if @movie.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
