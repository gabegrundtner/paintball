class Result < ActiveRecord::Base
  attr_accessible :place, :team_name, :tournament_id
  belongs_to :tournament

   def self.champion(place = "1st")
  	where("place > ? ", place)
  end
end
