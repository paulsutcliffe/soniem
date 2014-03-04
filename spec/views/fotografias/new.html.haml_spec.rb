require 'spec_helper'

describe "fotografias/new" do
  before(:each) do
    assign(:fotografia, stub_model(Fotografia,
      :fotografia => "MyString"
    ).as_new_record)
  end

  it "renders new fotografia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fotografias_path, "post" do
      assert_select "input#fotografia_fotografia[name=?]", "fotografia[fotografia]"
    end
  end
end
