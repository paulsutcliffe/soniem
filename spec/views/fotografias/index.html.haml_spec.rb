require 'spec_helper'

describe "fotografias/index" do
  before(:each) do
    assign(:fotografias, [
      stub_model(Fotografia,
        :fotografia => "Fotografia"
      ),
      stub_model(Fotografia,
        :fotografia => "Fotografia"
      )
    ])
  end

  it "renders a list of fotografias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fotografia".to_s, :count => 2
  end
end
