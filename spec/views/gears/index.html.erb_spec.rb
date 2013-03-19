require 'spec_helper'

describe "gears/index" do
  before(:each) do
    assign(:gears, [
      stub_model(Gear,
        :user_id => 1,
        :cost => 1.5,
        :name => "Name",
        :description => "Description",
        :for_sale => false
      ),
      stub_model(Gear,
        :user_id => 1,
        :cost => 1.5,
        :name => "Name",
        :description => "Description",
        :for_sale => false
      )
    ])
  end

  it "renders a list of gears" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
