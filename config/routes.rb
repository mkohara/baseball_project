Rails.application.routes.draw do
  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  devise_for :scouts
  # Routes for the Scout resource:
  # READ
  get "/scouts", :controller => "scouts", :action => "index"
  get "/scouts/:id", :controller => "scouts", :action => "show"


  # Routes for the Player resource:
  # CREATE
  get "/players/new", :controller => "players", :action => "new"
  post "/create_player", :controller => "players", :action => "create"

  # READ
  get "/players", :controller => "players", :action => "index"
  get "/players/:id", :controller => "players", :action => "show"

  # UPDATE
  get "/players/:id/edit", :controller => "players", :action => "edit"
  post "/update_player/:id", :controller => "players", :action => "update"

  # DELETE
  get "/delete_player/:id", :controller => "players", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
