require 'rails_helper'

RSpec.describe "horarios/show", type: :view do
  before(:each) do
    @horario = assign(:horario, Horario.create!(
      :medico => "Medico",
      :consultorio => "Consultorio",
      :turno => "Turno",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Medico/)
    expect(rendered).to match(/Consultorio/)
    expect(rendered).to match(/Turno/)
    expect(rendered).to match(/Estado/)
  end
end
