require 'spec_helper'

describe "temas_no_registrados/index" do
  before(:each) do
    assign(:temas_no_registrados, [
      stub_model(TemaNoRegistrado,
        :titulo => "Titulo",
        :autor => "Autor"
      ),
      stub_model(TemaNoRegistrado,
        :titulo => "Titulo",
        :autor => "Autor"
      )
    ])
  end

  it "renders a list of temas_no_registrados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Autor".to_s, :count => 2
  end
end
