class Api::FavoritesController < ApplicationController
  before_action :authenticate_user, only: [:create, :index]


  def index
    @favorites = Favorite.all
    render 'index.json.jbuilder'
  end

  def create
    @favorites = Favorite.new(
      problem_id: params[:problem_id],
      user_id: current_user.id
    )

    @favorites.save
    render 'show.json.jbuilder'
  end

  def destroy
    @favorite = Favorite.find_by(id:params[:id])
    if @favorite.destroy
      render json: {message: "This favorite has been removed"}
    else
      render json: {message: "Failed to remove favorite"}
    end
  end
end
