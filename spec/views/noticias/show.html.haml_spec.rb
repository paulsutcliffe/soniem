require 'spec_helper'

describe "noticias/show" do
  before(:each) do
    @noticia = assign(:noticia, stub_model(Noticia,
      :titulo => "Titulo",
      :imagen => "Imagen",
      :contenido => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Imagen/)
    expect(rendered).to match(/MyText/)
  end
end
