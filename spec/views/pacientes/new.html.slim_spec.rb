require 'rails_helper'

RSpec.describe "pacientes/new", type: :view do
  before(:each) do
    assign(:paciente, Paciente.new(
      :tipo_documento => "MyString",
      :documento => "MyString",
      :pri_nombre => "MyString",
      :seg_nombre => "MyString",
      :pri_apellido => "MyString",
      :seg_apellido => "MyString",
      :genero => "MyString",
      :direccion => "MyString",
      :telefono => "MyString",
      :regimen => "MyString",
      :num_ficha_sisben => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new paciente form" do
    render

    assert_select "form[action=?][method=?]", pacientes_path, "post" do

      assert_select "input#paciente_tipo_documento[name=?]", "paciente[tipo_documento]"

      assert_select "input#paciente_documento[name=?]", "paciente[documento]"

      assert_select "input#paciente_pri_nombre[name=?]", "paciente[pri_nombre]"

      assert_select "input#paciente_seg_nombre[name=?]", "paciente[seg_nombre]"

      assert_select "input#paciente_pri_apellido[name=?]", "paciente[pri_apellido]"

      assert_select "input#paciente_seg_apellido[name=?]", "paciente[seg_apellido]"

      assert_select "input#paciente_genero[name=?]", "paciente[genero]"

      assert_select "input#paciente_direccion[name=?]", "paciente[direccion]"

      assert_select "input#paciente_telefono[name=?]", "paciente[telefono]"

      assert_select "input#paciente_regimen[name=?]", "paciente[regimen]"

      assert_select "input#paciente_num_ficha_sisben[name=?]", "paciente[num_ficha_sisben]"

      assert_select "input#paciente_estado[name=?]", "paciente[estado]"
    end
  end
end
