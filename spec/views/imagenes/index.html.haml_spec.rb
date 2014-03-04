require 'spec_helper'

describe "imagenes/index" do
  before(:each) do
    assign(:imagenes, [
      stub_model(Imagen,
        :imagen => "Imagen"
      ),
      stub_model(Imagen,
        :imagen => "Imagen"
      )
    ])
  end

  it "renders a list of imagenes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Imagen".to_s, :count => 2
  end
end
