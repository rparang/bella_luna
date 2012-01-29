require 'spec_helper'

describe "menus/index.html.erb" do
  before(:each) do
    assign(:menus, [
      stub_model(Menu,
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :price_small => "9.99",
        :price_large => "9.99"
      ),
      stub_model(Menu,
        :name => "Name",
        :category => "Category",
        :description => "MyText",
        :price_small => "9.99",
        :price_large => "9.99"
      )
    ])
  end

  it "renders a list of menus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
