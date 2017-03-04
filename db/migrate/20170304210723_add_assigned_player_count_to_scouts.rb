class AddAssignedPlayerCountToScouts < ActiveRecord::Migration[5.0]
  def change
    add_column :scouts, :assigned_players_count, :integer
  end
end
