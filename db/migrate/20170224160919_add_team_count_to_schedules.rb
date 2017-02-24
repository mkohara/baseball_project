class AddTeamCountToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :teams_count, :integer
  end
end
