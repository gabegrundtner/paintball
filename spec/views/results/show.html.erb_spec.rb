require 'spec_helper'

describe "results/show" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :tournament_id => 1,
      :place => "Place",
      :team_name => "Team Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Place/)
    rendered.should match(/Team Name/)
  end
end
