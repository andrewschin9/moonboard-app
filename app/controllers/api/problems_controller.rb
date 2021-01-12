class Api::ProblemsController < ApplicationController
  before_action :authenticate_user, only: [:create, :index, :destroy]

  def index
    @problems = Problem.all
    render 'index.json.jbuilder'
  end

  def create
    @problem = Problem.new(
      prob_name: params[:prob_name] && params[:prob_name].upcase,
      grade: params[:grade],
      hold_set_id: 1,
      user_id: current_user.id,
    )
    
    @problem.save
    
    i1=0
    while i1<18 do
      i2=0
      while i2<11 do
        if params[:holds][i1][i2] == ""
          i2+=1
        else
          PickedHold.create(
          row: i1,
          column: i2,
          value: params[:holds][i1][i2],
          problem_id: @problem.id
          )
          i2+=1
        end
      end
      i1+=1
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