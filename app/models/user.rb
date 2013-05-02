class User < ActiveRecord::Base
  serialize :interested_in,Array
  attr_accessible :email, :is_admin, :name, :password, :status, :password_confirmation, :interested_in
  has_secure_password
  has_many :gears, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :users_gears
  
  

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

  def interested(gear)
    puts "****************** #{self.users_gears}"
    self.users_gears.create!(gear_id: gear.id)
    self.save
    puts "****************** #{self.users_gears}"
  end

  def is_interested(gear)
    self.users_gears.each do |ug|
      return true if ug.gear_id == gear.id
    end
    return false
  end
  def uninterested(gear)
    if self.is_interested(gear)
      self.users_gears.find_by_gear_id(gear.id).destroy
    end
  end
end
