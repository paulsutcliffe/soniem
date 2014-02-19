require 'spec_helper'

describe "ubicaciones/show" do
  before(:each) do
    @ubicacion = assign(:ubicacion, stub_model(Ubicacion,
      :lat => 1.5,
      :lng => 1.5,
      :direccion => "Direccion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Direccion/)
  end
end
