require 'spec_helper'

describe "systems/edit" do
  before(:each) do
    @system = assign(:system, stub_model(System,
      :model_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit system form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", system_path(@system), "post" do
      assert_select "input#system_model_id[name=?]", "system[model_id]"
      assert_select "input#system_name[name=?]", "system[name]"
    end
  end
end
