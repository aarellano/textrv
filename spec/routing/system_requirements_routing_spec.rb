require "spec_helper"

describe SystemRequirementsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/system_requirements").to route_to("system_requirements#index")
    end

    it "routes to #new" do
      expect(:get => "/system_requirements/new").to route_to("system_requirements#new")
    end

    it "routes to #show" do
      expect(:get => "/system_requirements/1").to route_to("system_requirements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/system_requirements/1/edit").to route_to("system_requirements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/system_requirements").to route_to("system_requirements#create")
    end

    it "routes to #update" do
      expect(:put => "/system_requirements/1").to route_to("system_requirements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/system_requirements/1").to route_to("system_requirements#destroy", :id => "1")
    end

  end
end
