require 'spec_helper'

describe "systems/index" do
  before(:each) do
    assign(:systems, [
      stub_model(System,
        :name => "Name"
      ),
      stub_model(System,
        :name => "Name"
      )
    ])
  end

  it "renders a list of systems" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
