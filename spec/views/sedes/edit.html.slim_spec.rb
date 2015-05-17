require 'rails_helper'

RSpec.describe "sedes/edit", type: :view do
  before(:each) do
    @sede = assign(:sede, Sede.create!(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit sede form" do
    render

    assert_select "form[action=?][method=?]", sede_path(@sede), "post" do

      assert_select "input#sede_nombre[name=?]", "sede[nombre]"

      assert_select "input#sede_descripcion[name=?]", "sede[descripcion]"

      assert_select "input#sede_estado[name=?]", "sede[estado]"
    end
  end
end
