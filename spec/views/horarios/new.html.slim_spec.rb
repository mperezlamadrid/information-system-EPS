require 'rails_helper'

RSpec.describe "horarios/new", type: :view do
  before(:each) do
    assign(:horario, Horario.new(
      :medico => "MyString",
      :consultorio => "MyString",
      :turno => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new horario form" do
    render

    assert_select "form[action=?][method=?]", horarios_path, "post" do

      assert_select "input#horario_medico[name=?]", "horario[medico]"

      assert_select "input#horario_consultorio[name=?]", "horario[consultorio]"

      assert_select "input#horario_turno[name=?]", "horario[turno]"

      assert_select "input#horario_estado[name=?]", "horario[estado]"
    end
  end
end
