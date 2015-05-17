require 'rails_helper'

RSpec.describe "cita/index", type: :view do
  before(:each) do
    assign(:cita, [
      Citum.create!(
        :horario => "Horario",
        :paciente => "Paciente",
        :especialidad => "Especialidad",
        :tipo => "Tipo",
        :estado => "Estado"
      ),
      Citum.create!(
        :horario => "Horario",
        :paciente => "Paciente",
        :especialidad => "Especialidad",
        :tipo => "Tipo",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of cita" do
    render
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
    assert_select "tr>td", :text => "Paciente".to_s, :count => 2
    assert_select "tr>td", :text => "Especialidad".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
