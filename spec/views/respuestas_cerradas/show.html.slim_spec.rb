require 'rails_helper'

RSpec.describe "respuestas_cerradas/show", type: :view do
  before(:each) do
    @respuestas_cerrada = assign(:respuestas_cerrada, RespuestasCerrada.create!(
      :respuesta => "Respuesta",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Respuesta/)
    expect(rendered).to match(/Estado/)
  end
end
