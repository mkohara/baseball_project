Rails.application.routes.draw do
  # Routes for the Schedule resource:
  # CREATE
  get "/schedules/new", :controller => "schedules", :action => "new"
  post "/create_schedule", :controller => "schedules", :action => "create"

  # READ
  get "/schedules", :controller => "schedules", :action => "index"
  get "/schedules/:id", :controller => "schedules", :action => "show"

  # UPDATE
  get "/schedules/:id/edit", :controller => "schedules", :action => "edit"
  post "/update_schedule/:id", :controller => "schedules", :action => "update"

  # DELETE
  get "/delete_schedule/:id", :controller => "schedules", :action => "destroy"
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # Routes for the Ranking resource:
  # CREATE
  get "/rankings/new", :controller => "rankings", :action => "new"
  post "/create_ranking", :controller => "rankings", :action => "create"

  # READ
  get "/rankings", :controller => "rankings", :action => "index"
  get "/rankings/:id", :controller => "rankings", :action => "show"

  # UPDATE
  get "/rankings/:id/edit", :controller => "rankings", :action => "edit"
  post "/update_ranking/:id", :controller => "rankings", :action => "update"

  # DELETE
  get "/delete_ranking/:id", :controller => "rankings", :action => "destroy"
  #------------------------------

  # Routes for the Note resource:
  # CREATE
  get "/notes/new", :controller => "notes", :action => "new"
  post "/create_note", :controller => "notes", :action => "create"

  # READ
  get "/notes", :controller => "notes", :action => "index"
  get "/notes/:id", :controller => "notes", :action => "show"

  # UPDATE
  get "/notes/:id/edit", :controller => "notes", :action => "edit"
  post "/update_note/:id", :controller => "notes", :action => "update"

  # DELETE
  get "/delete_note/:id", :controller => "notes", :action => "destroy"
  #------------------------------

  # Routes for the Video resource:
  # CREATE
  get "/videos/new", :controller => "videos", :action => "new"
  post "/create_video", :controller => "videos", :action => "create"

  # READ
  get "/videos", :controller => "videos", :action => "index"
  get "/videos/:id", :controller => "videos", :action => "show"

  # UPDATE
  get "/videos/:id/edit", :controller => "videos", :action => "edit"
  post "/update_video/:id", :controller => "videos", :action => "update"

  # DELETE
  get "/delete_video/:id", :controller => "videos", :action => "destroy"
  #------------------------------

  # Routes for the Team resource:
  # CREATE
  get "/teams/new", :controller => "teams", :action => "new"
  post "/create_team", :controller => "teams", :action => "create"

  # READ
  get "/teams", :controller => "teams", :action => "index"
  get "/teams/:id", :controller => "teams", :action => "show"

  # UPDATE
  get "/teams/:id/edit", :controller => "teams", :action => "edit"
  post "/update_team/:id", :controller => "teams", :action => "update"

  # DELETE
  get "/delete_team/:id", :controller => "teams", :action => "destroy"
  #------------------------------

  # Routes for the Assigned_player resource:
  # CREATE
  get "/assigned_players/new", :controller => "assigned_players", :action => "new"
  post "/create_assigned_player", :controller => "assigned_players", :action => "create"

  # READ
  get "/assigned_players", :controller => "assigned_players", :action => "index"
  get "/assigned_players/:id", :controller => "assigned_players", :action => "show"

  # UPDATE
  get "/assigned_players/:id/edit", :controller => "assigned_players", :action => "edit"
  post "/update_assigned_player/:id", :controller => "assigned_players", :action => "update"

  # DELETE
  get "/delete_assigned_player/:id", :controller => "assigned_players", :action => "destroy"
  #------------------------------

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
