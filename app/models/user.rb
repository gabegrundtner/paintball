class User < ActiveRecord::Base
  attr_accessible :email, :is_admin, :name, :password, :status, :password_confirmation
  has_secure_password
  has_many :gears, dependent: :destroy
  has_many :participants, dependent: :destroy

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  def self.STATUSES
   %w[Freshmen Sophomore Junior Senior Alumni]
  end

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

  def self.admins(admin = true)
  	where("is_admin == ? ", admin)
  end
end
