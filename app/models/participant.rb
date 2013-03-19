class Participant < ActiveRecord::Base
  attr_accessible :tournament_id, :user_id
  belongs_to :tournament
  belongs_to :user
end
