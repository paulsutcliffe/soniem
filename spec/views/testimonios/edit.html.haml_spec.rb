require 'spec_helper'

describe "testimonios/edit" do
  before(:each) do
    @testimonio = assign(:testimonio, stub_model(Testimonio,
      :nombre => "MyString",
      :mensaje => "MyText"
    ))
  end

  it "renders the edit testimonio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", testimonio_path(@testimonio), "post" do
      assert_select "input#testimonio_nombre[name=?]", "testimonio[nombre]"
      assert_select "textarea#testimonio_mensaje[name=?]", "testimonio[mensaje]"
    end
  end
end
