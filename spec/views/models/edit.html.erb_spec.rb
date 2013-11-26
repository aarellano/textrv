require 'spec_helper'

describe "models/edit" do
  before(:each) do
    @model = assign(:model, stub_model(model,
      :name => "MyString"
    ))
  end

  it "renders the edit model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", model_path(@model), "post" do
      assert_select "input#model_name[name=?]", "model[name]"
    end
  end
end
