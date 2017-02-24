class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :player_id
      t.integer :scout_id

      t.timestamps

    end
  end
end
