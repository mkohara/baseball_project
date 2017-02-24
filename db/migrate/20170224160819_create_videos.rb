class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :player_id

      t.timestamps

    end
  end
end
