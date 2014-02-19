require 'spec_helper'

describe "ubicaciones/new" do
  before(:each) do
    assign(:ubicacion, stub_model(Ubicacion,
      :lat => 1.5,
      :lng => 1.5,
      :direccion => "MyString"
    ).as_new_record)
  end

  it "renders new ubicacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ubicaciones_path, "post" do
      assert_select "input#ubicacion_lat[name=?]", "ubicacion[lat]"
      assert_select "input#ubicacion_lng[name=?]", "ubicacion[lng]"
      assert_select "input#ubicacion_direccion[name=?]", "ubicacion[direccion]"
    end
  end
end
