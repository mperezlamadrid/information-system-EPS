require 'rails_helper'

RSpec.describe "sedes/new", type: :view do
  before(:each) do
    assign(:sede, Sede.new(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new sede form" do
    render

    assert_select "form[action=?][method=?]", sedes_path, "post" do

      assert_select "input#sede_nombre[name=?]", "sede[nombre]"

      assert_select "input#sede_descripcion[name=?]", "sede[descripcion]"

      assert_select "input#sede_estado[name=?]", "sede[estado]"
    end
  end
end
