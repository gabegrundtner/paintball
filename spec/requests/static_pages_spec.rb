require 'spec_helper'

describe "Static pages"  do
	describe "Home page" do
		#user story 10
		it "should have content 'home of SMU Kids'" do
			visit '/static_pages/home'
			page.should have_content('HOME OF THE SMU KIDS')
		end
		#it { should have_link("tournaments", href: tournaments_path) }
		#it { should have_link("players", href: users_path) }
	end
	
end