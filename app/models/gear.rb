class Gear < ActiveRecord::Base
  attr_accessible :cost, :description, :for_sale, :name, :user_id
  belongs_to :user

  def self.selling(for_sale = true)
  	where("for_sale == ? ", for_sale)
  end
end
