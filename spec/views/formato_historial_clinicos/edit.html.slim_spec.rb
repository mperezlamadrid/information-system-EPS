require 'rails_helper'

RSpec.describe "formato_historial_clinicos/edit", type: :view do
  before(:each) do
    @formato_historial_clinico = assign(:formato_historial_clinico, FormatoHistorialClinico.create!(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit formato_historial_clinico form" do
    render

    assert_select "form[action=?][method=?]", formato_historial_clinico_path(@formato_historial_clinico), "post" do

      assert_select "input#formato_historial_clinico_nombre[name=?]", "formato_historial_clinico[nombre]"

      assert_select "input#formato_historial_clinico_descripcion[name=?]", "formato_historial_clinico[descripcion]"

      assert_select "input#formato_historial_clinico_estado[name=?]", "formato_historial_clinico[estado]"
    end
  end
end
