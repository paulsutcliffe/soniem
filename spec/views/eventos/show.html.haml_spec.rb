require 'spec_helper'

describe "eventos/show" do
  before(:each) do
    @evento = assign(:evento, stub_model(Evento,
      :titulo => "Titulo",
      :lugar => "Lugar",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Lugar/)
    expect(rendered).to match(/Link/)
  end
end
