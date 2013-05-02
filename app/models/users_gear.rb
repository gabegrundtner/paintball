class UsersGear < ActiveRecord::Base
  attr_accessible :gear_id, :user_id
  belongs_to :user
  belongs_to :gear
end
