class ScoutsController < ApplicationController
  def index
    @scouts = Scout.page(params[:page]).per(10)
  end

  def show
    @scout = Scout.find(params[:id])
  end
end
