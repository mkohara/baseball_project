class AddLocationLatitudeToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :location_latitude, :float
  end
end
