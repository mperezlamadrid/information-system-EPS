require 'rails_helper'

RSpec.describe "horarios/edit", type: :view do
  before(:each) do
    @horario = assign(:horario, Horario.create!(
      :medico => "MyString",
      :consultorio => "MyString",
      :turno => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit horario form" do
    render

    assert_select "form[action=?][method=?]", horario_path(@horario), "post" do

      assert_select "input#horario_medico[name=?]", "horario[medico]"

      assert_select "input#horario_consultorio[name=?]", "horario[consultorio]"

      assert_select "input#horario_turno[name=?]", "horario[turno]"

      assert_select "input#horario_estado[name=?]", "horario[estado]"
    end
  end
end
