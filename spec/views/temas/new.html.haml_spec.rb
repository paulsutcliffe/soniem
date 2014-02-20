require 'spec_helper'

describe "temas/new" do
  before(:each) do
    assign(:tema, stub_model(Tema,
      :titulo => "MyString",
      :duracion => "MyString",
      :formato => "MyString"
    ).as_new_record)
  end

  it "renders new tema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", temas_path, "post" do
      assert_select "input#tema_titulo[name=?]", "tema[titulo]"
      assert_select "input#tema_duracion[name=?]", "tema[duracion]"
      assert_select "input#tema_formato[name=?]", "tema[formato]"
    end
  end
end
