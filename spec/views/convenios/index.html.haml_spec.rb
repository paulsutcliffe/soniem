require 'spec_helper'

describe "convenios/index" do
  before(:each) do
    assign(:convenios, [
      stub_model(Convenio,
        :nombre => "Nombre",
        :descripcion => "MyText"
      ),
      stub_model(Convenio,
        :nombre => "Nombre",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of convenios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
