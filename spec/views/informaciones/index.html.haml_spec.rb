require 'spec_helper'

describe "informaciones/index" do
  before(:each) do
    assign(:informaciones, [
      stub_model(Informacion,
        :titulo => "Titulo",
        :foto => "Foto",
        :descripcion => "MyText"
      ),
      stub_model(Informacion,
        :titulo => "Titulo",
        :foto => "Foto",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of informaciones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Foto".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
