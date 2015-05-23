require 'rails_helper'

RSpec.describe "respuestas_cerradas/index", type: :view do
  before(:each) do
    assign(:respuestas_cerradas, [
      RespuestasCerrada.create!(
        :respuesta => "Respuesta",
        :estado => "Estado"
      ),
      RespuestasCerrada.create!(
        :respuesta => "Respuesta",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of respuestas_cerradas" do
    render
    assert_select "tr>td", :text => "Respuesta".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
