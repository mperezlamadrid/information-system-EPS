require 'rails_helper'

RSpec.describe "opciones_respuestas_cerradas/show", type: :view do
  before(:each) do
    @opciones_respuestas_cerrada = assign(:opciones_respuestas_cerrada, OpcionesRespuestasCerrada.create!(
      :respuestas_cerrada => nil,
      :opcion => "Opcion",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Opcion/)
    expect(rendered).to match(/Estado/)
  end
end
