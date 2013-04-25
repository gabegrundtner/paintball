class Tournament < ActiveRecord::Base
  attr_accessible :date, :location
  has_many :participants, dependent: :destroy
  has_many :results, dependent: :destroy
end
