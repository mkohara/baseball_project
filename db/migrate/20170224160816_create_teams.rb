class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :location
      t.text :divisionleague
      t.string :schedule
      t.integer :schedule_id

      t.timestamps

    end
  end
end
