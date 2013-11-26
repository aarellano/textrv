require 'spec_helper'

describe "systems/new" do
  before(:each) do
    assign(:system, stub_model(System,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new system form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", systems_path, "post" do
      assert_select "input#system_name[name=?]", "system[name]"
    end
  end
end
