class AddVideoCountToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :videos_count, :integer
  end
end
