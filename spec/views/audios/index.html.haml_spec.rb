require 'spec_helper'

describe "audios/index" do
  before(:each) do
    assign(:audios, [
      stub_model(Audio,
        :titulo => "Titulo",
        :audio => "Audio"
      ),
      stub_model(Audio,
        :titulo => "Titulo",
        :audio => "Audio"
      )
    ])
  end

  it "renders a list of audios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Audio".to_s, :count => 2
  end
end
