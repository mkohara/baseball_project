class AddRankingCountToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :rankings_count, :integer
  end
end
