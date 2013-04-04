require 'spec_helper'

describe Participant do
  before(:each) do
  	@user = User.create!(name: "Gabe", email: "gabe@example.com", status: "junior", is_admin: true)
  	@tourny = Tournament.create!(date: "January 1st 2013", location: "Vintage Paintball, River Falls, WI")
  	@p = Participant.create!(tournament_id: @tourny.id, user_id: @user.id)
  end

  it 'Gabe should have played at Vintage' do
  	User.find_by_name("Gabe").id.should == @p.user_id
  	Tournament.find_by_location("Vintage Paintball, River Falls, WI").id.should == @p.tournament_id
  end

end
