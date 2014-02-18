require "spec_helper"

describe SociosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/socios").to route_to("socios#index")
    end

    it "routes to #new" do
      expect(:get => "/socios/new").to route_to("socios#new")
    end

    it "routes to #show" do
      expect(:get => "/socios/1").to route_to("socios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/socios/1/edit").to route_to("socios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/socios").to route_to("socios#create")
    end

    it "routes to #update" do
      expect(:put => "/socios/1").to route_to("socios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/socios/1").to route_to("socios#destroy", :id => "1")
    end

  end
end
