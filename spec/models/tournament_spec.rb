require 'spec_helper'

describe Tournament do
  before(:each) do
  	@tourny = Tournament.create!(date: "January 1st 2013", location: "Vintage Paintball, River Falls, WI")
  	@user = User.create!(name: "Gabe", email: "gabe@example.com", status: "junior", is_admin: true)
  end

  it 'should exist' do
  	Tournament.find(@tourny.id).date.should == "January 1st 2013"
  end

  it 'should have 2 participants and 2 results' do
  	r1 = Result.create!(:tournament_id=>@tourny.id, :place=>"1st", :team_name=>"SMU")
    r2 = Result.create!(:tournament_id=>@tourny.id, :place=>"2nd", :team_name=>"SJU")
    p1 = Participant.create!(tournament_id: @tourny.id, user_id: @user.id)
    p2 = Participant.create!(tournament_id: @tourny.id, user_id: @user.id)
    @tourny.results(:force_reload=>:true).size.should == 2
    @tourny.participants(:force_reload=>:true).size.should == 2
  end
end
