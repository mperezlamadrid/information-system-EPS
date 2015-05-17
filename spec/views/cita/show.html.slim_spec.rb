require 'rails_helper'

RSpec.describe "cita/show", type: :view do
  before(:each) do
    @citum = assign(:citum, Citum.create!(
      :horario => "Horario",
      :paciente => "Paciente",
      :especialidad => "Especialidad",
      :tipo => "Tipo",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Horario/)
    expect(rendered).to match(/Paciente/)
    expect(rendered).to match(/Especialidad/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Estado/)
  end
end
