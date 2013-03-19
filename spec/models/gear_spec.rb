require 'spec_helper'

describe Gear do
  before(:each) do
  	@user = User.create!(name: "Gabe", email: "gabe@example.com", status: "junior", is_admin: true)
  end

  it 'should have 2 pieces of gear for sale' do
  	Gear.create!(name: "hopper", user_id: @user.id, for_sale: true)
  	Gear.create!(name: "barrel", user_id: @user.id, for_sale: true)
  	Gear.create!(name: "mask", user_id: @user.id, for_sale: false)
  	Gear.create!(name: "sandana", user_id: @user.id, for_sale: false)

  	Gear.selling.size == 2
  end
end
