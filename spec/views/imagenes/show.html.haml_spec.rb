require 'spec_helper'

describe "imagenes/show" do
  before(:each) do
    @imagen = assign(:imagen, stub_model(Imagen,
      :imagen => "Imagen"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Imagen/)
  end
end
