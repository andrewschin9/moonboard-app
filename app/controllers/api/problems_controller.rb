class Api::ProblemsController < ApplicationController
  before_action :authenticate_user, only: [:create, :index]

  def index
    @problems = Problem.all
    render 'index.json.jbuilder'
  end

  def create
    @problems = Problem.new(
      prob_name: params[:name],
      grade: params[:grade],
    )

    @problems.save
    # Place holder variable hardcode until front end is built
    params[:hold] = [{id:1,type:"start"},{id:2,type:"mid"}]
    # ^^^
    params[:hold].each do |hold|
      @selected_holds = SelectedHold.new(
        hold_id: hold[:id],
        hold_type: hold [:type],
        hold_set_id: 1,
        problem_id: @problems.id,
        user_id: 1
      )
      @selected_holds.save!
    end
    render 'show.json.jbuilder'
  end

  def destroy
    @problem = Problem.find_by(id: params[:id])
    if @problem.destroy
      render json: {message: "This problem has been deleted"}
    else
      render json:{message: "Failed to delete problem"}
    end
  end
end