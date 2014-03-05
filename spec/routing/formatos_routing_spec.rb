require "spec_helper"

describe FormatosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/formatos").to route_to("formatos#index")
    end

    it "routes to #new" do
      expect(:get => "/formatos/new").to route_to("formatos#new")
    end

    it "routes to #show" do
      expect(:get => "/formatos/1").to route_to("formatos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/formatos/1/edit").to route_to("formatos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/formatos").to route_to("formatos#create")
    end

    it "routes to #update" do
      expect(:put => "/formatos/1").to route_to("formatos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/formatos/1").to route_to("formatos#destroy", :id => "1")
    end

  end
end
