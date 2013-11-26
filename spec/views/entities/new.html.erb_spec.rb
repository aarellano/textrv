require 'spec_helper'

describe "entities/new" do
  before(:each) do
    assign(:entity, stub_model(Entity,
      :name => "MyString",
      :system_id => 1
    ).as_new_record)
  end

  it "renders new entity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entities_path, "post" do
      assert_select "input#entity_name[name=?]", "entity[name]"
      assert_select "input#entity_system_id[name=?]", "entity[system_id]"
    end
  end
end
