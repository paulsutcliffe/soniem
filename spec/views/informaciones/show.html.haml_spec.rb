require 'spec_helper'

describe "informaciones/show" do
  before(:each) do
    @informacion = assign(:informacion, stub_model(Informacion,
      :titulo => "Titulo",
      :foto => "Foto",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Foto/)
    expect(rendered).to match(/MyText/)
  end
end
