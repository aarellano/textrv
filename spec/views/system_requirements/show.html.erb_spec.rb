require 'spec_helper'

describe "system_requirements/show" do
  before(:each) do
    @system_requirement = assign(:system_requirement, stub_model(SystemRequirement,
      :title => "Title",
      :description => "MyText",
      :system_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
