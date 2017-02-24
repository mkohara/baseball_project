class Player < ApplicationRecord
  # Direct associations

  has_many   :notes,
             :dependent => :destroy

  has_many   :videos,
             :dependent => :nullify

  has_many   :assigned_players,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
