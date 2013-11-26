require 'spec_helper'

describe "systems/show" do
  before(:each) do
    @system = assign(:system, stub_model(System,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
  end
end
