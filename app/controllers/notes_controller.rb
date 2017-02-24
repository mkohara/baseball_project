class NotesController < ApplicationController
  def index
    @q = Note.ransack(params[:q])
    @notes = @q.result(:distinct => true).includes(:player).page(params[:page]).per(10)

    render("notes/index.html.erb")
  end

  def show
    @note = Note.find(params[:id])

    render("notes/show.html.erb")
  end

  def new
    @note = Note.new

    render("notes/new.html.erb")
  end

  def create
    @note = Note.new

    @note.player_id = params[:player_id]

    save_status = @note.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/notes/new", "/create_note"
        redirect_to("/notes")
      else
        redirect_back(:fallback_location => "/", :notice => "Note created successfully.")
      end
    else
      render("notes/new.html.erb")
    end
  end

  def edit
    @note = Note.find(params[:id])

    render("notes/edit.html.erb")
  end

  def update
    @note = Note.find(params[:id])

    @note.player_id = params[:player_id]

    save_status = @note.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/notes/#{@note.id}/edit", "/update_note"
        redirect_to("/notes/#{@note.id}", :notice => "Note updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Note updated successfully.")
      end
    else
      render("notes/edit.html.erb")
    end
  end

  def destroy
    @note = Note.find(params[:id])

    @note.destroy

    if URI(request.referer).path == "/notes/#{@note.id}"
      redirect_to("/", :notice => "Note deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Note deleted.")
    end
  end
end
