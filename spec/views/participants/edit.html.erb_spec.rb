require 'spec_helper'

describe "participants/edit" do
  before(:each) do
    @participant = assign(:participant, stub_model(Participant,
      :tournament_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => participants_path(@participant), :method => "post" do
      assert_select "input#participant_tournament_id", :name => "participant[tournament_id]"
      assert_select "input#participant_user_id", :name => "participant[user_id]"
    end
  end
end
