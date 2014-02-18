require 'spec_helper'

describe "directivos/index" do
  before(:each) do
    assign(:directivos, [
      stub_model(Directivo,
        :nombre => "Nombre",
        :cargo => "Cargo",
        :foto => "Foto"
      ),
      stub_model(Directivo,
        :nombre => "Nombre",
        :cargo => "Cargo",
        :foto => "Foto"
      )
    ])
  end

  it "renders a list of directivos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
    assert_select "tr>td", :text => "Foto".to_s, :count => 2
  end
end
