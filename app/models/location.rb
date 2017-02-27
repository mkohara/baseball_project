class Location < ApplicationRecord
  # Direct associations

  has_many   :teams,
             :dependent => :destroy

  has_many   :schedules,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
