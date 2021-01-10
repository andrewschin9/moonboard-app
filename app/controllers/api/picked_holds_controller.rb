class Api::PickedHoldsController < ApplicationController
  before_action :authenticate_user, only: [:create, :index, :destroy]

  def index
    @picked_holds = PickedHold.all
    render "index.json.jbuilder"
  end
end
