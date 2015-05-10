require 'rails_helper'

RSpec.describe "servicios/new", type: :view do
  before(:each) do
    assign(:servicio, Servicio.new(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new servicio form" do
    render

    assert_select "form[action=?][method=?]", servicios_path, "post" do

      assert_select "input#servicio_nombre[name=?]", "servicio[nombre]"

      assert_select "input#servicio_descripcion[name=?]", "servicio[descripcion]"

      assert_select "input#servicio_estado[name=?]", "servicio[estado]"
    end
  end
end
