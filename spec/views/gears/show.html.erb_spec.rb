require 'spec_helper'

describe "gears/show" do
  before(:each) do
    @gear = assign(:gear, stub_model(Gear,
      :user_id => 1,
      :cost => 1.5,
      :name => "Name",
      :description => "Description",
      :for_sale => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/false/)
  end
end
