require "spec_helper"

describe TemasNoRegistradosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/temas_no_registrados").to route_to("temas_no_registrados#index")
    end

    it "routes to #new" do
      expect(:get => "/temas_no_registrados/new").to route_to("temas_no_registrados#new")
    end

    it "routes to #show" do
      expect(:get => "/temas_no_registrados/1").to route_to("temas_no_registrados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/temas_no_registrados/1/edit").to route_to("temas_no_registrados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/temas_no_registrados").to route_to("temas_no_registrados#create")
    end

    it "routes to #update" do
      expect(:put => "/temas_no_registrados/1").to route_to("temas_no_registrados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/temas_no_registrados/1").to route_to("temas_no_registrados#destroy", :id => "1")
    end

  end
end
