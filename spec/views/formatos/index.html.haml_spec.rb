require 'spec_helper'

describe "formatos/index" do
  before(:each) do
    assign(:formatos, [
      stub_model(Formato,
        :pdf => "Pdf",
        :titulo => "Titulo"
      ),
      stub_model(Formato,
        :pdf => "Pdf",
        :titulo => "Titulo"
      )
    ])
  end

  it "renders a list of formatos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pdf".to_s, :count => 2
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end
