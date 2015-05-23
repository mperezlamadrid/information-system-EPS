require 'rails_helper'

RSpec.describe "pregunta/show", type: :view do
  before(:each) do
    @preguntum = assign(:preguntum, Preguntum.create!(
      :pregunta => "Pregunta",
      :tipo => "Tipo",
      :respuestas_cerrada => nil,
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pregunta/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Estado/)
  end
end
