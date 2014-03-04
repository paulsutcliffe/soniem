require 'spec_helper'

describe "informaciones/new" do
  before(:each) do
    assign(:informacion, stub_model(Informacion,
      :titulo => "MyString",
      :foto => "MyString",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new informacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", informaciones_path, "post" do
      assert_select "input#informacion_titulo[name=?]", "informacion[titulo]"
      assert_select "input#informacion_foto[name=?]", "informacion[foto]"
      assert_select "textarea#informacion_descripcion[name=?]", "informacion[descripcion]"
    end
  end
end
