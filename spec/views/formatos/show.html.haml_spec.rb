require 'spec_helper'

describe "formatos/show" do
  before(:each) do
    @formato = assign(:formato, stub_model(Formato,
      :pdf => "Pdf",
      :titulo => "Titulo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Pdf/)
    expect(rendered).to match(/Titulo/)
  end
end
