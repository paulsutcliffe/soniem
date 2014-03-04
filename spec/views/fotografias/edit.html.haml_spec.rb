require 'spec_helper'

describe "fotografias/edit" do
  before(:each) do
    @fotografia = assign(:fotografia, stub_model(Fotografia,
      :fotografia => "MyString"
    ))
  end

  it "renders the edit fotografia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fotografia_path(@fotografia), "post" do
      assert_select "input#fotografia_fotografia[name=?]", "fotografia[fotografia]"
    end
  end
end
