require 'rails_helper'

RSpec.describe "opciones_respuestas_cerradas/edit", type: :view do
  before(:each) do
    @opciones_respuestas_cerrada = assign(:opciones_respuestas_cerrada, OpcionesRespuestasCerrada.create!(
      :respuestas_cerrada => nil,
      :opcion => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit opciones_respuestas_cerrada form" do
    render

    assert_select "form[action=?][method=?]", opciones_respuestas_cerrada_path(@opciones_respuestas_cerrada), "post" do

      assert_select "input#opciones_respuestas_cerrada_respuestas_cerrada_id[name=?]", "opciones_respuestas_cerrada[respuestas_cerrada_id]"

      assert_select "input#opciones_respuestas_cerrada_opcion[name=?]", "opciones_respuestas_cerrada[opcion]"

      assert_select "input#opciones_respuestas_cerrada_estado[name=?]", "opciones_respuestas_cerrada[estado]"
    end
  end
end
