require 'spec_helper'

describe "TemaNoRegistrados" do
  describe "GET /temas_no_registrados" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get temas_no_registrados_path
      expect(response.status).to be(200)
    end
  end
end
