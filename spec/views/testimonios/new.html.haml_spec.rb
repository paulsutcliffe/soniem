require 'spec_helper'

describe "testimonios/new" do
  before(:each) do
    assign(:testimonio, stub_model(Testimonio,
      :nombre => "MyString",
      :mensaje => "MyText"
    ).as_new_record)
  end

  it "renders new testimonio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", testimonios_path, "post" do
      assert_select "input#testimonio_nombre[name=?]", "testimonio[nombre]"
      assert_select "textarea#testimonio_mensaje[name=?]", "testimonio[mensaje]"
    end
  end
end
