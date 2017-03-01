class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :location_id
      t.text :division_league
      t.string :schedule

      t.timestamps

    end
  end
end
