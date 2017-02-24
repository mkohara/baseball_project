class AddFavoriteCountToScouts < ActiveRecord::Migration[5.0]
  def change
    add_column :scouts, :favorites_count, :integer
  end
end
