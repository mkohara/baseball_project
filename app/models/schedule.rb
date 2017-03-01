class Schedule < ApplicationRecord
  # Direct associations

  belongs_to :location

  belongs_to :away_team,
             :class_name => "Team"

  belongs_to :home_team,
             :class_name => "Team"

  # Indirect associations

  # Validations

end
