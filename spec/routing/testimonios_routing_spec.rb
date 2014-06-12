require "spec_helper"

describe TestimoniosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/testimonios").to route_to("testimonios#index")
    end

    it "routes to #new" do
      expect(:get => "/testimonios/new").to route_to("testimonios#new")
    end

    it "routes to #show" do
      expect(:get => "/testimonios/1").to route_to("testimonios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/testimonios/1/edit").to route_to("testimonios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/testimonios").to route_to("testimonios#create")
    end

    it "routes to #update" do
      expect(:put => "/testimonios/1").to route_to("testimonios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/testimonios/1").to route_to("testimonios#destroy", :id => "1")
    end

  end
end
