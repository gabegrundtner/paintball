require 'spec_helper'

describe Tournament do
  before(:each) do
  	@tourny = Tournament.create!(date: "January 1st 2013", location: "Vintage Paintball, River Falls, WI")
  end

  it 'should exist' do
  	Tournament.find(@tourny.id).date.should == "January 1st 2013"
  end
end
