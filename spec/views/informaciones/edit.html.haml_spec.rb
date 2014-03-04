require 'spec_helper'

describe "informaciones/edit" do
  before(:each) do
    @informacion = assign(:informacion, stub_model(Informacion,
      :titulo => "MyString",
      :foto => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit informacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", informacion_path(@informacion), "post" do
      assert_select "input#informacion_titulo[name=?]", "informacion[titulo]"
      assert_select "input#informacion_foto[name=?]", "informacion[foto]"
      assert_select "textarea#informacion_descripcion[name=?]", "informacion[descripcion]"
    end
  end
end
