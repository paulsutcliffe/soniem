require "spec_helper"

describe InformacionesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/informaciones").to route_to("informaciones#index")
    end

    it "routes to #new" do
      expect(:get => "/informaciones/new").to route_to("informaciones#new")
    end

    it "routes to #show" do
      expect(:get => "/informaciones/1").to route_to("informaciones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/informaciones/1/edit").to route_to("informaciones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/informaciones").to route_to("informaciones#create")
    end

    it "routes to #update" do
      expect(:put => "/informaciones/1").to route_to("informaciones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/informaciones/1").to route_to("informaciones#destroy", :id => "1")
    end

  end
end
