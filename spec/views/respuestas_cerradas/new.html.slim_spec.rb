require 'rails_helper'

RSpec.describe "respuestas_cerradas/new", type: :view do
  before(:each) do
    assign(:respuestas_cerrada, RespuestasCerrada.new(
      :respuesta => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new respuestas_cerrada form" do
    render

    assert_select "form[action=?][method=?]", respuestas_cerradas_path, "post" do

      assert_select "input#respuestas_cerrada_respuesta[name=?]", "respuestas_cerrada[respuesta]"

      assert_select "input#respuestas_cerrada_estado[name=?]", "respuestas_cerrada[estado]"
    end
  end
end
