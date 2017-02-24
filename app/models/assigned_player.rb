class AssignedPlayer < ApplicationRecord
  # Direct associations

  belongs_to :player,
             :counter_cache => true

  # Indirect associations

  # Validations

end
