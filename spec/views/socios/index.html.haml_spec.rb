require 'spec_helper'

describe "socios/index" do
  before(:each) do
    assign(:socios, [
      stub_model(Socio,
        :nombre => "Nombre",
        :contenido => "MyText",
        :fotografia => "Fotografia",
        :web => "Web",
        :twitter => "Twitter",
        :facebook => "Facebook",
        :soundcloud => "Soundcloud"
      ),
      stub_model(Socio,
        :nombre => "Nombre",
        :contenido => "MyText",
        :fotografia => "Fotografia",
        :web => "Web",
        :twitter => "Twitter",
        :facebook => "Facebook",
        :soundcloud => "Soundcloud"
      )
    ])
  end

  it "renders a list of socios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Fotografia".to_s, :count => 2
    assert_select "tr>td", :text => "Web".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Soundcloud".to_s, :count => 2
  end
end
