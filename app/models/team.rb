class Team < ApplicationRecord
  # Direct associations

  belongs_to :location

  has_many   :away_events,
             :class_name => "Schedule",
             :foreign_key => "away_team_id",
             :dependent => :destroy

  has_many   :home_events,
             :class_name => "Schedule",
             :foreign_key => "home_team_id",
             :dependent => :destroy

  has_many   :players,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
