require 'spec_helper'

describe "ubicaciones/edit" do
  before(:each) do
    @ubicacion = assign(:ubicacion, stub_model(Ubicacion,
      :lat => 1.5,
      :lng => 1.5,
      :direccion => "MyString"
    ))
  end

  it "renders the edit ubicacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ubicacion_path(@ubicacion), "post" do
      assert_select "input#ubicacion_lat[name=?]", "ubicacion[lat]"
      assert_select "input#ubicacion_lng[name=?]", "ubicacion[lng]"
      assert_select "input#ubicacion_direccion[name=?]", "ubicacion[direccion]"
    end
  end
end
