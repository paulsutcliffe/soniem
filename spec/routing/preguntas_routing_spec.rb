require "spec_helper"

describe PreguntasController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/preguntas").to route_to("preguntas#index")
    end

    it "routes to #new" do
      expect(:get => "/preguntas/new").to route_to("preguntas#new")
    end

    it "routes to #show" do
      expect(:get => "/preguntas/1").to route_to("preguntas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/preguntas/1/edit").to route_to("preguntas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/preguntas").to route_to("preguntas#create")
    end

    it "routes to #update" do
      expect(:put => "/preguntas/1").to route_to("preguntas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/preguntas/1").to route_to("preguntas#destroy", :id => "1")
    end

  end
end
