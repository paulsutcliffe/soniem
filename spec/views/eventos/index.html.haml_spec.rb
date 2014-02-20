require 'spec_helper'

describe "eventos/index" do
  before(:each) do
    assign(:eventos, [
      stub_model(Evento,
        :titulo => "Titulo",
        :lugar => "Lugar",
        :link => "Link"
      ),
      stub_model(Evento,
        :titulo => "Titulo",
        :lugar => "Lugar",
        :link => "Link"
      )
    ])
  end

  it "renders a list of eventos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Lugar".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
