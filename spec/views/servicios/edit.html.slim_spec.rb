require 'rails_helper'

RSpec.describe "servicios/edit", type: :view do
  before(:each) do
    @servicio = assign(:servicio, Servicio.create!(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit servicio form" do
    render

    assert_select "form[action=?][method=?]", servicio_path(@servicio), "post" do

      assert_select "input#servicio_nombre[name=?]", "servicio[nombre]"

      assert_select "input#servicio_descripcion[name=?]", "servicio[descripcion]"

      assert_select "input#servicio_estado[name=?]", "servicio[estado]"
    end
  end
end
