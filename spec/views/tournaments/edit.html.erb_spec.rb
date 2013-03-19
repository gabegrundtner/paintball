require 'spec_helper'

describe "tournaments/edit" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :date => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path(@tournament), :method => "post" do
      assert_select "input#tournament_date", :name => "tournament[date]"
      assert_select "input#tournament_location", :name => "tournament[location]"
    end
  end
end
