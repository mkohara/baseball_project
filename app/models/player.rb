class Player < ApplicationRecord
  # Direct associations

  belongs_to :team,
             :counter_cache => true

  has_many   :rankings,
             :dependent => :destroy

  has_many   :notes,
             :dependent => :destroy

  has_many   :videos,
             :dependent => :nullify

  has_many   :assigned_players,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  has_many   :favorited_by,
             :through => :favorites,
             :source => :user

  has_many   :assigned_scouts,
             :through => :assigned_players,
             :source => :user

  # Validations

end
