require 'rails_helper'

RSpec.describe "turnos/new", type: :view do
  before(:each) do
    assign(:turno, Turno.new(
      :dia => "MyString",
      :hora => "MyString",
      :minuto => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new turno form" do
    render

    assert_select "form[action=?][method=?]", turnos_path, "post" do

      assert_select "input#turno_dia[name=?]", "turno[dia]"

      assert_select "input#turno_hora[name=?]", "turno[hora]"

      assert_select "input#turno_minuto[name=?]", "turno[minuto]"

      assert_select "input#turno_estado[name=?]", "turno[estado]"
    end
  end
end
