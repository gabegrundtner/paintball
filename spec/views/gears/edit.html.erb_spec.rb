require 'spec_helper'

describe "gears/edit" do
  before(:each) do
    @gear = assign(:gear, stub_model(Gear,
      :user_id => 1,
      :cost => 1.5,
      :name => "MyString",
      :description => "MyString",
      :for_sale => false
    ))
  end

  it "renders the edit gear form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gears_path(@gear), :method => "post" do
      assert_select "input#gear_user_id", :name => "gear[user_id]"
      assert_select "input#gear_cost", :name => "gear[cost]"
      assert_select "input#gear_name", :name => "gear[name]"
      assert_select "input#gear_description", :name => "gear[description]"
      assert_select "input#gear_for_sale", :name => "gear[for_sale]"
    end
  end
end
