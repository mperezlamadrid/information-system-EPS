require 'rails_helper'

RSpec.describe "respuestas_cerradas/edit", type: :view do
  before(:each) do
    @respuestas_cerrada = assign(:respuestas_cerrada, RespuestasCerrada.create!(
      :respuesta => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit respuestas_cerrada form" do
    render

    assert_select "form[action=?][method=?]", respuestas_cerrada_path(@respuestas_cerrada), "post" do

      assert_select "input#respuestas_cerrada_respuesta[name=?]", "respuestas_cerrada[respuesta]"

      assert_select "input#respuestas_cerrada_estado[name=?]", "respuestas_cerrada[estado]"
    end
  end
end
