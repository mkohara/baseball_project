class Scout < ApplicationRecord
  # Direct associations

  has_many   :rankings,
             :dependent => :destroy

  has_many   :assigned_players,
             :foreign_key => "user_id",
             :dependent => :destroy

  has_many   :favorites,
             :foreign_key => "user_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :players,
             :through => :assigned_players,
             :source => :player

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
