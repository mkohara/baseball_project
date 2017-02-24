class AddLocationLongitudeToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :location_longitude, :float
  end
end
