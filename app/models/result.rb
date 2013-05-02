class Result < ActiveRecord::Base
  attr_accessible :place, :team_name, :tournament_id
  belongs_to :tournament

  validates :place, presence: true 
  validates :team_name, presence: true
  validates :tournament_id, presence: true

  def self.PLACES
   %w[1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th]
  end

   def self.champion(place = "1st")
  	where("place > ? ", place)
  end
end
