require 'spec_helper'

describe QuienesSomosController do

  describe "GET 'que_es_soniem'" do
    it "returns http success" do
      get 'que_es_soniem'
      expect(response).to be_success
    end
  end

  describe "GET 'como_funciona_soniem'" do
    it "returns http success" do
      get 'como_funciona_soniem'
      expect(response).to be_success
    end
  end

  describe "GET 'que_hace_soniem'" do
    it "returns http success" do
      get 'que_hace_soniem'
      expect(response).to be_success
    end
  end

  describe "GET 'ley_del_artista'" do
    it "returns http success" do
      get 'ley_del_artista'
      expect(response).to be_success
    end
  end

  describe "GET 'organizacion'" do
    it "returns http success" do
      get 'organizacion'
      expect(response).to be_success
    end
  end

end
