require "spec_helper"

describe ComunicadosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/comunicados").to route_to("comunicados#index")
    end

    it "routes to #new" do
      expect(:get => "/comunicados/new").to route_to("comunicados#new")
    end

    it "routes to #show" do
      expect(:get => "/comunicados/1").to route_to("comunicados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/comunicados/1/edit").to route_to("comunicados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/comunicados").to route_to("comunicados#create")
    end

    it "routes to #update" do
      expect(:put => "/comunicados/1").to route_to("comunicados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/comunicados/1").to route_to("comunicados#destroy", :id => "1")
    end

  end
end
