require 'rails_helper'

RSpec.describe "dia_habils/edit", type: :view do
  before(:each) do
    @dia_habil = assign(:dia_habil, DiaHabil.create!(
      :nombre => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit dia_habil form" do
    render

    assert_select "form[action=?][method=?]", dia_habil_path(@dia_habil), "post" do

      assert_select "input#dia_habil_nombre[name=?]", "dia_habil[nombre]"

      assert_select "input#dia_habil_estado[name=?]", "dia_habil[estado]"
    end
  end
end
