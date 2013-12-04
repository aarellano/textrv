require 'spec_helper'

describe "SystemRequirements" do
  describe "GET /system_requirements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get system_requirements_path
      expect(response.status).to be(200)
    end
  end
end
