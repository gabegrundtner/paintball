require 'spec_helper'

describe "tournaments/show" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :date => "Date",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Date/)
    rendered.should match(/Location/)
  end
end
