require 'spec_helper'

describe "fotografias/show" do
  before(:each) do
    @fotografia = assign(:fotografia, stub_model(Fotografia,
      :fotografia => "Fotografia"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Fotografia/)
  end
end
