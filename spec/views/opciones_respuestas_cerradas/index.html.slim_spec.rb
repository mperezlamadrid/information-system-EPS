require 'rails_helper'

RSpec.describe "opciones_respuestas_cerradas/index", type: :view do
  before(:each) do
    assign(:opciones_respuestas_cerradas, [
      OpcionesRespuestasCerrada.create!(
        :respuestas_cerrada => nil,
        :opcion => "Opcion",
        :estado => "Estado"
      ),
      OpcionesRespuestasCerrada.create!(
        :respuestas_cerrada => nil,
        :opcion => "Opcion",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of opciones_respuestas_cerradas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Opcion".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
