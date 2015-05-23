require 'rails_helper'

RSpec.describe "formato_historial_clinicos/show", type: :view do
  before(:each) do
    @formato_historial_clinico = assign(:formato_historial_clinico, FormatoHistorialClinico.create!(
      :nombre => "Nombre",
      :descripcion => "Descripcion",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Estado/)
  end
end
