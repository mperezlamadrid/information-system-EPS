require 'rails_helper'

RSpec.describe "consultorios/new", type: :view do
  before(:each) do
    assign(:consultorio, Consultorio.new(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => "MyString",
      :sede => nil
    ))
  end

  it "renders new consultorio form" do
    render

    assert_select "form[action=?][method=?]", consultorios_path, "post" do

      assert_select "input#consultorio_nombre[name=?]", "consultorio[nombre]"

      assert_select "input#consultorio_descripcion[name=?]", "consultorio[descripcion]"

      assert_select "input#consultorio_estado[name=?]", "consultorio[estado]"

      assert_select "input#consultorio_sede_id[name=?]", "consultorio[sede_id]"
    end
  end
end
