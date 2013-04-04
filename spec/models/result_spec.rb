require 'spec_helper'

describe Result do
  before(:each) do
  	@tourny = Tournament.create!(date: "January 1st 2013", location: "Vintage Paintball, River Falls, WI")
  end

  it 'should have a champion' do
  	Result.create!(tournament_id: @tourny.id, place: "1st", team_name: "SMU")
  	Result.create!(tournament_id: @tourny.id, place: "2nd", team_name: "SJU")
  	Result.create!(tournament_id: @tourny.id, place: "3rd", team_name: "Viterbo")
  	Result.champion.size == 1
  end

  it 'should delete results when Tournament deleted' do
        r1 = Result.create!(:tournament_id=>@tourny.id, :place=>"1st", :team_name=>"SMU")
        r2 = Result.create!(:tournament_id=>@tourny.id, :place=>"2nd", :team_name=>"SJU")
        @tourny.delete
        r1.tournament(:force_reload=>:true) == nil
        r2.tournament(:force_reload=>:true) == nil
    end

end
