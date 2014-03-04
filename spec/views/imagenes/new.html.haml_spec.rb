require 'spec_helper'

describe "imagenes/new" do
  before(:each) do
    assign(:imagen, stub_model(Imagen,
      :imagen => "MyString"
    ).as_new_record)
  end

  it "renders new imagen form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", imagenes_path, "post" do
      assert_select "input#imagen_imagen[name=?]", "imagen[imagen]"
    end
  end
end
