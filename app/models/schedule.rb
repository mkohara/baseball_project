class Schedule < ApplicationRecord
  # Direct associations

  has_many   :teams,
             :dependent => :nullify

  belongs_to :location

  # Indirect associations

  # Validations

end
