require 'rails_helper'

RSpec.describe "consultorios/edit", type: :view do
  before(:each) do
    @consultorio = assign(:consultorio, Consultorio.create!(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => "MyString",
      :sede => nil
    ))
  end

  it "renders the edit consultorio form" do
    render

    assert_select "form[action=?][method=?]", consultorio_path(@consultorio), "post" do

      assert_select "input#consultorio_nombre[name=?]", "consultorio[nombre]"

      assert_select "input#consultorio_descripcion[name=?]", "consultorio[descripcion]"

      assert_select "input#consultorio_estado[name=?]", "consultorio[estado]"

      assert_select "input#consultorio_sede_id[name=?]", "consultorio[sede_id]"
    end
  end
end
