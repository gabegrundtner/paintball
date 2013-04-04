class User < ActiveRecord::Base
  attr_accessible :email, :is_admin, :name, :password, :status
  has_many :gears
  has_many :participants

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  def self.admins(admin = true)
  	where("is_admin == ? ", admin)
  end
end
