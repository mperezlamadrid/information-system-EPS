require 'rails_helper'

RSpec.describe "horarios/index", type: :view do
  before(:each) do
    assign(:horarios, [
      Horario.create!(
        :medico => "Medico",
        :consultorio => "Consultorio",
        :turno => "Turno",
        :estado => "Estado"
      ),
      Horario.create!(
        :medico => "Medico",
        :consultorio => "Consultorio",
        :turno => "Turno",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of horarios" do
    render
    assert_select "tr>td", :text => "Medico".to_s, :count => 2
    assert_select "tr>td", :text => "Consultorio".to_s, :count => 2
    assert_select "tr>td", :text => "Turno".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
