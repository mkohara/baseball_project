class Team < ApplicationRecord
  # Direct associations

  belongs_to :schedule,
             :counter_cache => true

  has_many   :players,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
