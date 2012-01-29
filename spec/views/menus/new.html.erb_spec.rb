require 'spec_helper'

describe "menus/new.html.erb" do
  before(:each) do
    assign(:menu, stub_model(Menu,
      :name => "MyString",
      :category => "MyString",
      :description => "MyText",
      :price_small => "9.99",
      :price_large => "9.99"
    ).as_new_record)
  end

  it "renders new menu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => menus_path, :method => "post" do
      assert_select "input#menu_name", :name => "menu[name]"
      assert_select "input#menu_category", :name => "menu[category]"
      assert_select "textarea#menu_description", :name => "menu[description]"
      assert_select "input#menu_price_small", :name => "menu[price_small]"
      assert_select "input#menu_price_large", :name => "menu[price_large]"
    end
  end
end
