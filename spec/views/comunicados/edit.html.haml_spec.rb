require 'spec_helper'

describe "comunicados/edit" do
  before(:each) do
    @comunicado = assign(:comunicado, stub_model(Comunicado,
      :titulo => "MyString",
      :contenido => "MyText",
      :pdf => "MyString"
    ))
  end

  it "renders the edit comunicado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comunicado_path(@comunicado), "post" do
      assert_select "input#comunicado_titulo[name=?]", "comunicado[titulo]"
      assert_select "textarea#comunicado_contenido[name=?]", "comunicado[contenido]"
      assert_select "input#comunicado_pdf[name=?]", "comunicado[pdf]"
    end
  end
end
