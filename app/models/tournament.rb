class Tournament < ActiveRecord::Base
  attr_accessible :date, :location
  has_many :participants
  has_many :results
end
