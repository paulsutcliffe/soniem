require 'spec_helper'

describe "testimonios/show" do
  before(:each) do
    @testimonio = assign(:testimonio, stub_model(Testimonio,
      :nombre => "Nombre",
      :mensaje => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
  end
end
