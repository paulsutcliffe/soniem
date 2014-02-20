require 'spec_helper'

describe "temas/show" do
  before(:each) do
    @tema = assign(:tema, stub_model(Tema,
      :titulo => "Titulo",
      :duracion => "Duracion",
      :formato => "Formato"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Duracion/)
    expect(rendered).to match(/Formato/)
  end
end
