require "spec_helper"

describe ImagenesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/imagenes").to route_to("imagenes#index")
    end

    it "routes to #new" do
      expect(:get => "/imagenes/new").to route_to("imagenes#new")
    end

    it "routes to #show" do
      expect(:get => "/imagenes/1").to route_to("imagenes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/imagenes/1/edit").to route_to("imagenes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/imagenes").to route_to("imagenes#create")
    end

    it "routes to #update" do
      expect(:put => "/imagenes/1").to route_to("imagenes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/imagenes/1").to route_to("imagenes#destroy", :id => "1")
    end

  end
end
