require 'spec_helper'

describe "preguntas/edit" do
  before(:each) do
    @pregunta = assign(:pregunta, stub_model(Pregunta,
      :pregunta => "MyString",
      :respuesta => "MyText"
    ))
  end

  it "renders the edit pregunta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pregunta_path(@pregunta), "post" do
      assert_select "input#pregunta_pregunta[name=?]", "pregunta[pregunta]"
      assert_select "textarea#pregunta_respuesta[name=?]", "pregunta[respuesta]"
    end
  end
end
