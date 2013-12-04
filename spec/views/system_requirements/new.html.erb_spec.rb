require 'spec_helper'

describe "system_requirements/new" do
  before(:each) do
    assign(:system_requirement, stub_model(SystemRequirement,
      :title => "MyString",
      :description => "MyText",
      :system_id => 1
    ).as_new_record)
  end

  it "renders new system_requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", system_requirements_path, "post" do
      assert_select "input#system_requirement_title[name=?]", "system_requirement[title]"
      assert_select "textarea#system_requirement_description[name=?]", "system_requirement[description]"
      assert_select "input#system_requirement_system_id[name=?]", "system_requirement[system_id]"
    end
  end
end
