require "spec_helper"

describe FotografiasController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fotografias").to route_to("fotografias#index")
    end

    it "routes to #new" do
      expect(:get => "/fotografias/new").to route_to("fotografias#new")
    end

    it "routes to #show" do
      expect(:get => "/fotografias/1").to route_to("fotografias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fotografias/1/edit").to route_to("fotografias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fotografias").to route_to("fotografias#create")
    end

    it "routes to #update" do
      expect(:put => "/fotografias/1").to route_to("fotografias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fotografias/1").to route_to("fotografias#destroy", :id => "1")
    end

  end
end
