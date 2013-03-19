require 'spec_helper'

describe User do
  before(:each) do
  	@user = User.create!(name: "Gabe", email: "gabe@example.com", status: "junior", is_admin: true)
  end

  it 'should exist' do
  	User.find(@user.id).name.should == "Gabe"
  end

   it 'should have 2 gears' do
    	Gear.create!(:name=>"hopper", :user_id => @user.id)
    	Gear.create!(:name=>"Eclipse marker", user_id: @user.id)
    	@user.gears(:force_reload=>:true).size.should == 2   
    end

    it 'should delete gears when user deleted' do
        g1 = Gear.create!(:name=>"hopper", :user_id => @user.id)
        g2 = Gear.create!(:name=>"Eclipse marker", user_id: @user.id)
        @user.delete
        g1.user(:force_reload=>:true) == nil
        g2.user(:force_reload=>:true) == nil
    end
end
