require 'spec_helper'

describe "socios/show" do
  before(:each) do
    @socio = assign(:socio, stub_model(Socio,
      :nombre => "Nombre",
      :contenido => "MyText",
      :fotografia => "Fotografia",
      :web => "Web",
      :twitter => "Twitter",
      :facebook => "Facebook",
      :soundcloud => "Soundcloud"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Fotografia/)
    expect(rendered).to match(/Web/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Soundcloud/)
  end
end
