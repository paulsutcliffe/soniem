require 'spec_helper'

describe "ubicaciones/index" do
  before(:each) do
    assign(:ubicaciones, [
      stub_model(Ubicacion,
        :lat => 1.5,
        :lng => 1.5,
        :direccion => "Direccion"
      ),
      stub_model(Ubicacion,
        :lat => 1.5,
        :lng => 1.5,
        :direccion => "Direccion"
      )
    ])
  end

  it "renders a list of ubicaciones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
  end
end
