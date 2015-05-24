require 'rails_helper'

RSpec.describe "formato_hc_pregunta/show", type: :view do
  before(:each) do
    @formato_hc_preguntum = assign(:formato_hc_preguntum, FormatoHcPreguntum.create!(
      :formato_hc => "Formato Hc",
      :pregunta => "Pregunta",
      :obligatorio => "Obligatorio",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Formato Hc/)
    expect(rendered).to match(/Pregunta/)
    expect(rendered).to match(/Obligatorio/)
    expect(rendered).to match(/Estado/)
  end
end
