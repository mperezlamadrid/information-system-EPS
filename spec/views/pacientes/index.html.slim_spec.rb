require 'rails_helper'

RSpec.describe "pacientes/index", type: :view do
  before(:each) do
    assign(:pacientes, [
      Paciente.create!(
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
      ),
      Paciente.create!(
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
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    assert_select "tr>td", :text => "Tipo Documento".to_s, :count => 2
    assert_select "tr>td", :text => "Documento".to_s, :count => 2
    assert_select "tr>td", :text => "Pri Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Seg Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Pri Apellido".to_s, :count => 2
    assert_select "tr>td", :text => "Seg Apellido".to_s, :count => 2
    assert_select "tr>td", :text => "Genero".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Regimen".to_s, :count => 2
    assert_select "tr>td", :text => "Num Ficha Sisben".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
