require 'spec_helper'

describe "Tournaments" do


 subject { page }

 describe "index" do
 	before(:each) {
 		visit tournaments_path
 	}

 	it { should have_selector('h1', text: 'Listing tournaments') }
#user story 1, 39
 	it "should list each tournament" do
        Tournament.all.each do |tourny|
          page.should have_selector('td', text: tourny.date)
          page.should have_selector('td', text: tourny.location)
        end
      end

 end

 describe "show" do

 	before(:all) {
		@tourny = Tournament.create!(date: "4/13/13", location: "Vintage Paintball, River Falls, WI")
		@user = User.create!(name: "Gabe", email: "gabe@example.com", status: "junior", is_admin: true, password: "password")
		@user2 = User.create!(name: "Sam", email: "sam@example.com", status: "junior", is_admin: false, password: "password")
		p1 = Participant.create!(tournament_id: @tourny.id, user_id: @user.id)
 		p2 = Participant.create!(tournament_id: @tourny.id, user_id: @user2.id)
 		r1 = Result.create!(tournament_id: @tourny.id, place: "1st", team_name: "Saint Mary's")
 		r2 = Result.create!(tournament_id: @tourny.id, place: "2nd", team_name: "Viturbo")
		visit tournament_path(@tourny)
	}


 	
#user stories 3, 46
  it "should have participants" do
 		@tourny.participants.each do |p|
 			page.should have_selector('li', text: User.find(p.user_id).name)
 		end
    end
#user stories 42, 2,
     it "should have results" do
 		@tourny.results.each do |r|
 			page.should have_selector('td', text: r.place)
 		end
    end
 end

end
