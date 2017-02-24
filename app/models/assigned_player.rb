class AssignedPlayer < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :class_name => "Scout",
             :counter_cache => true

  belongs_to :player,
             :counter_cache => true

  # Indirect associations

  # Validations

end
