require 'spec_helper'

describe "entities/show" do
  before(:each) do
    @entity = assign(:entity, stub_model(Entity,
      :name => "Name",
      :system_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
