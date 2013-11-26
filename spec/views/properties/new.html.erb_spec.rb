require 'spec_helper'

describe "properties/new" do
  before(:each) do
    assign(:property, stub_model(Property,
      :name => "MyString",
      :property_id => 1
    ).as_new_record)
  end

  it "renders new property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", properties_path, "post" do
      assert_select "input#property_name[name=?]", "property[name]"
      assert_select "input#property_property_id[name=?]", "property[property_id]"
    end
  end
end
