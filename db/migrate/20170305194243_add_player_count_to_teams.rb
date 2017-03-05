class AddPlayerCountToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :players_count, :integer
  end
end
