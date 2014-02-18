require 'spec_helper'

describe "convenios/show" do
  before(:each) do
    @convenio = assign(:convenio, stub_model(Convenio,
      :nombre => "Nombre",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
  end
end
