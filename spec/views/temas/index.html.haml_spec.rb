require 'spec_helper'

describe "temas/index" do
  before(:each) do
    assign(:temas, [
      stub_model(Tema,
        :titulo => "Titulo",
        :duracion => "Duracion",
        :formato => "Formato"
      ),
      stub_model(Tema,
        :titulo => "Titulo",
        :duracion => "Duracion",
        :formato => "Formato"
      )
    ])
  end

  it "renders a list of temas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Duracion".to_s, :count => 2
    assert_select "tr>td", :text => "Formato".to_s, :count => 2
  end
end
