require 'spec_helper'

describe "menus/edit.html.erb" do
  before(:each) do
    @menu = assign(:menu, stub_model(Menu,
      :name => "MyString",
      :category => "MyString",
      :description => "MyText",
      :price_small => "9.99",
      :price_large => "9.99"
    ))
  end

  it "renders the edit menu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => menus_path(@menu), :method => "post" do
      assert_select "input#menu_name", :name => "menu[name]"
      assert_select "input#menu_category", :name => "menu[category]"
      assert_select "textarea#menu_description", :name => "menu[description]"
      assert_select "input#menu_price_small", :name => "menu[price_small]"
      assert_select "input#menu_price_large", :name => "menu[price_large]"
    end
  end
end
