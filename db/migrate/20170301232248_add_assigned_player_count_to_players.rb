class AddAssignedPlayerCountToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :assigned_players_count, :integer
  end
end
