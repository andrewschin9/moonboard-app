class Api::PickedHoldsController < ApplicationController
  def index
    @picked_holds = PickedHold.all
    render "index.json.jbuilder"
  end
end
