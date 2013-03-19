require 'spec_helper'

describe "results/edit" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :tournament_id => 1,
      :place => "MyString",
      :team_name => "MyString"
    ))
  end

  it "renders the edit result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => results_path(@result), :method => "post" do
      assert_select "input#result_tournament_id", :name => "result[tournament_id]"
      assert_select "input#result_place", :name => "result[place]"
      assert_select "input#result_team_name", :name => "result[team_name]"
    end
  end
end
