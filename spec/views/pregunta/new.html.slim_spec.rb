require 'rails_helper'

RSpec.describe "pregunta/new", type: :view do
  before(:each) do
    assign(:preguntum, Preguntum.new(
      :pregunta => "MyString",
      :tipo => "MyString",
      :respuestas_cerrada => nil,
      :estado => "MyString"
    ))
  end

  it "renders new preguntum form" do
    render

    assert_select "form[action=?][method=?]", pregunta_path, "post" do

      assert_select "input#preguntum_pregunta[name=?]", "preguntum[pregunta]"

      assert_select "input#preguntum_tipo[name=?]", "preguntum[tipo]"

      assert_select "input#preguntum_respuestas_cerrada_id[name=?]", "preguntum[respuestas_cerrada_id]"

      assert_select "input#preguntum_estado[name=?]", "preguntum[estado]"
    end
  end
end
