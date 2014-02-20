require 'spec_helper'

describe "eventos/edit" do
  before(:each) do
    @evento = assign(:evento, stub_model(Evento,
      :titulo => "MyString",
      :lugar => "MyString",
      :link => "MyString"
    ))
  end

  it "renders the edit evento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", evento_path(@evento), "post" do
      assert_select "input#evento_titulo[name=?]", "evento[titulo]"
      assert_select "input#evento_lugar[name=?]", "evento[lugar]"
      assert_select "input#evento_link[name=?]", "evento[link]"
    end
  end
end
