class MoviesController < ApplicationController
  before_action :current_user_must_be_movie_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_movie_director
    movie = Movie.find(params[:id])

    unless current_user == movie.director
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @movies = current_user.movies
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.director_id = params[:director_id]

    if @movie.save
      redirect_to "/movies", :notice => "Movie created successfully."
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.title = params[:title]
    @movie.director_id = params[:director_id]

    if @movie.save
      redirect_to "/movies", :notice => "Movie updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy

    redirect_to "/movies", :notice => "Movie deleted."
  end
end
