require 'spec_helper'

describe "preguntas/show" do
  before(:each) do
    @pregunta = assign(:pregunta, stub_model(Pregunta,
      :pregunta => "Pregunta",
      :respuesta => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Pregunta/)
    expect(rendered).to match(/MyText/)
  end
end
