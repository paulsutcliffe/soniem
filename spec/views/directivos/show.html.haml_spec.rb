require 'spec_helper'

describe "directivos/show" do
  before(:each) do
    @directivo = assign(:directivo, stub_model(Directivo,
      :nombre => "Nombre",
      :cargo => "Cargo",
      :foto => "Foto"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Cargo/)
    expect(rendered).to match(/Foto/)
  end
end
