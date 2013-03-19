class User < ActiveRecord::Base
  attr_accessible :email, :is_admin, :name, :password, :status
  has_many :gears
  has_many :participants
end
