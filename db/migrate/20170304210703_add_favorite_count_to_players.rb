class AddFavoriteCountToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :favorites_count, :integer
  end
end
