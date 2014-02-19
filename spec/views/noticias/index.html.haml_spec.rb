require 'spec_helper'

describe "noticias/index" do
  before(:each) do
    assign(:noticias, [
      stub_model(Noticia,
        :titulo => "Titulo",
        :imagen => "Imagen",
        :contenido => "MyText"
      ),
      stub_model(Noticia,
        :titulo => "Titulo",
        :imagen => "Imagen",
        :contenido => "MyText"
      )
    ])
  end

  it "renders a list of noticias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Imagen".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
