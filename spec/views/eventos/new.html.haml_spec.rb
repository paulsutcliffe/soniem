require 'spec_helper'

describe "eventos/new" do
  before(:each) do
    assign(:evento, stub_model(Evento,
      :titulo => "MyString",
      :lugar => "MyString",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new evento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", eventos_path, "post" do
      assert_select "input#evento_titulo[name=?]", "evento[titulo]"
      assert_select "input#evento_lugar[name=?]", "evento[lugar]"
      assert_select "input#evento_link[name=?]", "evento[link]"
    end
  end
end
