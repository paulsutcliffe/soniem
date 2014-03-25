require 'spec_helper'

describe "temas_no_registrados/edit" do
  before(:each) do
    @tema_no_registrado = assign(:tema_no_registrado, stub_model(TemaNoRegistrado,
      :titulo => "MyString",
      :autor => "MyString"
    ))
  end

  it "renders the edit tema_no_registrado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tema_no_registrado_path(@tema_no_registrado), "post" do
      assert_select "input#tema_no_registrado_titulo[name=?]", "tema_no_registrado[titulo]"
      assert_select "input#tema_no_registrado_autor[name=?]", "tema_no_registrado[autor]"
    end
  end
end
