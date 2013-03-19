require 'spec_helper'

describe "tournaments/index" do
  before(:each) do
    assign(:tournaments, [
      stub_model(Tournament,
        :date => "Date",
        :location => "Location"
      ),
      stub_model(Tournament,
        :date => "Date",
        :location => "Location"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
