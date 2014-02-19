require 'spec_helper'

describe "comunicados/index" do
  before(:each) do
    assign(:comunicados, [
      stub_model(Comunicado,
        :titulo => "Titulo",
        :contenido => "MyText",
        :pdf => "Pdf"
      ),
      stub_model(Comunicado,
        :titulo => "Titulo",
        :contenido => "MyText",
        :pdf => "Pdf"
      )
    ])
  end

  it "renders a list of comunicados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pdf".to_s, :count => 2
  end
end
