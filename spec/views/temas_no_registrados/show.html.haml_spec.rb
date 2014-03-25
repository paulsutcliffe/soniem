require 'spec_helper'

describe "temas_no_registrados/show" do
  before(:each) do
    @tema_no_registrado = assign(:tema_no_registrado, stub_model(TemaNoRegistrado,
      :titulo => "Titulo",
      :autor => "Autor"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Autor/)
  end
end
