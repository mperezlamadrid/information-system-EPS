require 'rails_helper'

RSpec.describe "opciones_respuestas_cerradas/new", type: :view do
  before(:each) do
    assign(:opciones_respuestas_cerrada, OpcionesRespuestasCerrada.new(
      :respuestas_cerrada => nil,
      :opcion => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new opciones_respuestas_cerrada form" do
    render

    assert_select "form[action=?][method=?]", opciones_respuestas_cerradas_path, "post" do

      assert_select "input#opciones_respuestas_cerrada_respuestas_cerrada_id[name=?]", "opciones_respuestas_cerrada[respuestas_cerrada_id]"

      assert_select "input#opciones_respuestas_cerrada_opcion[name=?]", "opciones_respuestas_cerrada[opcion]"

      assert_select "input#opciones_respuestas_cerrada_estado[name=?]", "opciones_respuestas_cerrada[estado]"
    end
  end
end
