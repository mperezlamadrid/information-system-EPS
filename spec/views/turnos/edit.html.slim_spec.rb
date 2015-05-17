require 'rails_helper'

RSpec.describe "turnos/edit", type: :view do
  before(:each) do
    @turno = assign(:turno, Turno.create!(
      :dia => "MyString",
      :hora => "MyString",
      :minuto => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit turno form" do
    render

    assert_select "form[action=?][method=?]", turno_path(@turno), "post" do

      assert_select "input#turno_dia[name=?]", "turno[dia]"

      assert_select "input#turno_hora[name=?]", "turno[hora]"

      assert_select "input#turno_minuto[name=?]", "turno[minuto]"

      assert_select "input#turno_estado[name=?]", "turno[estado]"
    end
  end
end
