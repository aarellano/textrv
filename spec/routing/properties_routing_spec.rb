require "spec_helper"

describe PropertiesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/properties").to route_to("properties#index")
    end

    it "routes to #new" do
      expect(:get => "/properties/new").to route_to("properties#new")
    end

    it "routes to #show" do
      expect(:get => "/properties/1").to route_to("properties#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/properties/1/edit").to route_to("properties#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/properties").to route_to("properties#create")
    end

    it "routes to #update" do
      expect(:put => "/properties/1").to route_to("properties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/properties/1").to route_to("properties#destroy", :id => "1")
    end

  end
end
