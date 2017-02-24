class ScoutsController < ApplicationController
  def index
    @scouts = Scout.all
  end

  def show
    @scout = Scout.find(params[:id])
  end
end
