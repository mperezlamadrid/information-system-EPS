require 'rails_helper'

RSpec.describe "turnos/index", type: :view do
  before(:each) do
    assign(:turnos, [
      Turno.create!(
        :dia => "Dia",
        :hora => "Hora",
        :minuto => "Minuto",
        :estado => "Estado"
      ),
      Turno.create!(
        :dia => "Dia",
        :hora => "Hora",
        :minuto => "Minuto",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of turnos" do
    render
    assert_select "tr>td", :text => "Dia".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => "Minuto".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
