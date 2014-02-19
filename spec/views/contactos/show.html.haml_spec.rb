require 'spec_helper'

describe "contactos/show" do
  before(:each) do
    @contacto = assign(:contacto, stub_model(Contacto,
      :nombre => "Nombre",
      :email => "Email",
      :telefono => "Telefono",
      :mensaje => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telefono/)
    expect(rendered).to match(/MyText/)
  end
end
