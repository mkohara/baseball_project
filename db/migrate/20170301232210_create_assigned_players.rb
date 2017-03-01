class CreateAssignedPlayers < ActiveRecord::Migration
  def change
    create_table :assigned_players do |t|
      t.integer :user_id
      t.integer :player_id
      t.string :name

      t.timestamps

    end
  end
end
