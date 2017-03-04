class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :statistics
      t.integer :scout_id
      t.integer :team_id
      t.string :name

      t.timestamps

    end
  end
end
