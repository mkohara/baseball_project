class Location < ApplicationRecord
  # Direct associations

  has_many   :schedules,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
