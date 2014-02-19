require 'spec_helper'

describe "comunicados/show" do
  before(:each) do
    @comunicado = assign(:comunicado, stub_model(Comunicado,
      :titulo => "Titulo",
      :contenido => "MyText",
      :pdf => "Pdf"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Pdf/)
  end
end
