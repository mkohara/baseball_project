class Ranking < ApplicationRecord
  # Direct associations

  belongs_to :scout

  belongs_to :player,
             :counter_cache => true

  # Indirect associations

  # Validations

end
