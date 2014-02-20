require 'spec_helper'

describe "temas/edit" do
  before(:each) do
    @tema = assign(:tema, stub_model(Tema,
      :titulo => "MyString",
      :duracion => "MyString",
      :formato => "MyString"
    ))
  end

  it "renders the edit tema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tema_path(@tema), "post" do
      assert_select "input#tema_titulo[name=?]", "tema[titulo]"
      assert_select "input#tema_duracion[name=?]", "tema[duracion]"
      assert_select "input#tema_formato[name=?]", "tema[formato]"
    end
  end
end
