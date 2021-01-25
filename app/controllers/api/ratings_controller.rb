class Api::RatingsController < ApplicationController
  def index
    @ratings = Rating.all
    render 'index.json.jbuilder'
  end

  def create
    @rating = Rating.new(
      problem_id: params[:problem_id],
      user_id: current_user.id,
     rating: params[:rating],
    )
    @rating.save
    render 'show.json.jbuilder'
  end

  def show
    @rating = Rating.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def destroy
    @rating = Rating.find_by(id: params[:id])
    if @rating.destroy
      render json: {message: "Rating succesfully destroyed"}
    else
      render json: {message: "Rating not destroyed"}
    end
  end
end
