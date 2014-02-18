require 'spec_helper'

describe "convenios/edit" do
  before(:each) do
    @convenio = assign(:convenio, stub_model(Convenio,
      :nombre => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit convenio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", convenio_path(@convenio), "post" do
      assert_select "input#convenio_nombre[name=?]", "convenio[nombre]"
      assert_select "textarea#convenio_descripcion[name=?]", "convenio[descripcion]"
    end
  end
end
