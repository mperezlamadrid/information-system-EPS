require 'rails_helper'

RSpec.describe "turnos/show", type: :view do
  before(:each) do
    @turno = assign(:turno, Turno.create!(
      :dia => "Dia",
      :hora => "Hora",
      :minuto => "Minuto",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dia/)
    expect(rendered).to match(/Hora/)
    expect(rendered).to match(/Minuto/)
    expect(rendered).to match(/Estado/)
  end
end
