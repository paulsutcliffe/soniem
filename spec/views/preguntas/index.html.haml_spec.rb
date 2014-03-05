require 'spec_helper'

describe "preguntas/index" do
  before(:each) do
    assign(:preguntas, [
      stub_model(Pregunta,
        :pregunta => "Pregunta",
        :respuesta => "MyText"
      ),
      stub_model(Pregunta,
        :pregunta => "Pregunta",
        :respuesta => "MyText"
      )
    ])
  end

  it "renders a list of preguntas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pregunta".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
