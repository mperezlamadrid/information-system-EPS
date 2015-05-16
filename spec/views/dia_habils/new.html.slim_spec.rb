require 'rails_helper'

RSpec.describe "dia_habils/new", type: :view do
  before(:each) do
    assign(:dia_habil, DiaHabil.new(
      :nombre => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new dia_habil form" do
    render

    assert_select "form[action=?][method=?]", dia_habils_path, "post" do

      assert_select "input#dia_habil_nombre[name=?]", "dia_habil[nombre]"

      assert_select "input#dia_habil_estado[name=?]", "dia_habil[estado]"
    end
  end
end
