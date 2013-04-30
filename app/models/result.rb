class Result < ActiveRecord::Base
  attr_accessible :place, :team_name, :tournament_id
  belongs_to :tournament

  validates :place, presence: true 
  validates :team_name, presence: true
  validates :tournament_id, presence: true

   def self.champion(place = "1st")
  	where("place > ? ", place)
  end
end
