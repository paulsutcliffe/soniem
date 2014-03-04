require 'spec_helper'

describe "imagenes/edit" do
  before(:each) do
    @imagen = assign(:imagen, stub_model(Imagen,
      :imagen => "MyString"
    ))
  end

  it "renders the edit imagen form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", imagen_path(@imagen), "post" do
      assert_select "input#imagen_imagen[name=?]", "imagen[imagen]"
    end
  end
end
