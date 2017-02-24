class RankingsController < ApplicationController
  before_action :current_user_must_be_ranking_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_ranking_scout
    ranking = Ranking.find(params[:id])

    unless current_user == ranking.scout
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @rankings = Ranking.page(params[:page]).per(10)

    render("rankings/index.html.erb")
  end

  def show
    @ranking = Ranking.find(params[:id])

    render("rankings/show.html.erb")
  end

  def new
    @ranking = Ranking.new

    render("rankings/new.html.erb")
  end

  def create
    @ranking = Ranking.new

    @ranking.player_id = params[:player_id]
    @ranking.scout_id = params[:scout_id]

    save_status = @ranking.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rankings/new", "/create_ranking"
        redirect_to("/rankings")
      else
        redirect_back(:fallback_location => "/", :notice => "Ranking created successfully.")
      end
    else
      render("rankings/new.html.erb")
    end
  end

  def edit
    @ranking = Ranking.find(params[:id])

    render("rankings/edit.html.erb")
  end

  def update
    @ranking = Ranking.find(params[:id])

    @ranking.player_id = params[:player_id]
    @ranking.scout_id = params[:scout_id]

    save_status = @ranking.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rankings/#{@ranking.id}/edit", "/update_ranking"
        redirect_to("/rankings/#{@ranking.id}", :notice => "Ranking updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ranking updated successfully.")
      end
    else
      render("rankings/edit.html.erb")
    end
  end

  def destroy
    @ranking = Ranking.find(params[:id])

    @ranking.destroy

    if URI(request.referer).path == "/rankings/#{@ranking.id}"
      redirect_to("/", :notice => "Ranking deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ranking deleted.")
    end
  end
end
