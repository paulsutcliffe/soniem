require "spec_helper"

describe DirectivosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/directivos").to route_to("directivos#index")
    end

    it "routes to #new" do
      expect(:get => "/directivos/new").to route_to("directivos#new")
    end

    it "routes to #show" do
      expect(:get => "/directivos/1").to route_to("directivos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/directivos/1/edit").to route_to("directivos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/directivos").to route_to("directivos#create")
    end

    it "routes to #update" do
      expect(:put => "/directivos/1").to route_to("directivos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/directivos/1").to route_to("directivos#destroy", :id => "1")
    end

  end
end
