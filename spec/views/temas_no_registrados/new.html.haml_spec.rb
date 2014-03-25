require 'spec_helper'

describe "temas_no_registrados/new" do
  before(:each) do
    assign(:tema_no_registrado, stub_model(TemaNoRegistrado,
      :titulo => "MyString",
      :autor => "MyString"
    ).as_new_record)
  end

  it "renders new tema_no_registrado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", temas_no_registrados_path, "post" do
      assert_select "input#tema_no_registrado_titulo[name=?]", "tema_no_registrado[titulo]"
      assert_select "input#tema_no_registrado_autor[name=?]", "tema_no_registrado[autor]"
    end
  end
end
