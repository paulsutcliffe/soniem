require 'spec_helper'

describe "comunicados/new" do
  before(:each) do
    assign(:comunicado, stub_model(Comunicado,
      :titulo => "MyString",
      :contenido => "MyText",
      :pdf => "MyString"
    ).as_new_record)
  end

  it "renders new comunicado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comunicados_path, "post" do
      assert_select "input#comunicado_titulo[name=?]", "comunicado[titulo]"
      assert_select "textarea#comunicado_contenido[name=?]", "comunicado[contenido]"
      assert_select "input#comunicado_pdf[name=?]", "comunicado[pdf]"
    end
  end
end
