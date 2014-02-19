require 'spec_helper'

describe "Comunicados" do
  describe "GET /comunicados" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get comunicados_path
      expect(response.status).to be(200)
    end
  end
end
