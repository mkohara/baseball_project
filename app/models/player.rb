class Player < ApplicationRecord
  # Direct associations

  has_many   :assigned_players,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
