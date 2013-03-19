require 'spec_helper'

describe "results/index" do
  before(:each) do
    assign(:results, [
      stub_model(Result,
        :tournament_id => 1,
        :place => "Place",
        :team_name => "Team Name"
      ),
      stub_model(Result,
        :tournament_id => 1,
        :place => "Place",
        :team_name => "Team Name"
      )
    ])
  end

  it "renders a list of results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Team Name".to_s, :count => 2
  end
end
