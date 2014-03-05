require 'spec_helper'

describe "preguntas/new" do
  before(:each) do
    assign(:pregunta, stub_model(Pregunta,
      :pregunta => "MyString",
      :respuesta => "MyText"
    ).as_new_record)
  end

  it "renders new pregunta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", preguntas_path, "post" do
      assert_select "input#pregunta_pregunta[name=?]", "pregunta[pregunta]"
      assert_select "textarea#pregunta_respuesta[name=?]", "pregunta[respuesta]"
    end
  end
end
