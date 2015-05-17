require 'rails_helper'

RSpec.describe "cita/edit", type: :view do
  before(:each) do
    @citum = assign(:citum, Citum.create!(
      :horario => "MyString",
      :paciente => "MyString",
      :especialidad => "MyString",
      :tipo => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit citum form" do
    render

    assert_select "form[action=?][method=?]", citum_path(@citum), "post" do

      assert_select "input#citum_horario[name=?]", "citum[horario]"

      assert_select "input#citum_paciente[name=?]", "citum[paciente]"

      assert_select "input#citum_especialidad[name=?]", "citum[especialidad]"

      assert_select "input#citum_tipo[name=?]", "citum[tipo]"

      assert_select "input#citum_estado[name=?]", "citum[estado]"
    end
  end
end
