require 'rails_helper'

RSpec.describe "pacientes/show", type: :view do
  before(:each) do
    @paciente = assign(:paciente, Paciente.create!(
      :tipo_documento => "Tipo Documento",
      :documento => "Documento",
      :pri_nombre => "Pri Nombre",
      :seg_nombre => "Seg Nombre",
      :pri_apellido => "Pri Apellido",
      :seg_apellido => "Seg Apellido",
      :genero => "Genero",
      :direccion => "Direccion",
      :telefono => "Telefono",
      :regimen => "Regimen",
      :num_ficha_sisben => "Num Ficha Sisben",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tipo Documento/)
    expect(rendered).to match(/Documento/)
    expect(rendered).to match(/Pri Nombre/)
    expect(rendered).to match(/Seg Nombre/)
    expect(rendered).to match(/Pri Apellido/)
    expect(rendered).to match(/Seg Apellido/)
    expect(rendered).to match(/Genero/)
    expect(rendered).to match(/Direccion/)
    expect(rendered).to match(/Telefono/)
    expect(rendered).to match(/Regimen/)
    expect(rendered).to match(/Num Ficha Sisben/)
    expect(rendered).to match(/Estado/)
  end
end
