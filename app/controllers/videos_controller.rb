class VideosController < ApplicationController
  def index
    @q = Video.ransack(params[:q])
    @videos = @q.result(:distinct => true).includes(:player).page(params[:page]).per(10)

    render("videos/index.html.erb")
  end

  def show
    @video = Video.find(params[:id])

    render("videos/show.html.erb")
  end

  def new
    @video = Video.new

    render("videos/new.html.erb")
  end

  def create
    @video = Video.new

    @video.player_id = params[:player_id]

    save_status = @video.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/videos/new", "/create_video"
        redirect_to("/videos")
      else
        redirect_back(:fallback_location => "/", :notice => "Video created successfully.")
      end
    else
      render("videos/new.html.erb")
    end
  end

  def edit
    @video = Video.find(params[:id])

    render("videos/edit.html.erb")
  end

  def update
    @video = Video.find(params[:id])

    @video.player_id = params[:player_id]

    save_status = @video.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/videos/#{@video.id}/edit", "/update_video"
        redirect_to("/videos/#{@video.id}", :notice => "Video updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Video updated successfully.")
      end
    else
      render("videos/edit.html.erb")
    end
  end

  def destroy
    @video = Video.find(params[:id])

    @video.destroy

    if URI(request.referer).path == "/videos/#{@video.id}"
      redirect_to("/", :notice => "Video deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Video deleted.")
    end
  end
end
