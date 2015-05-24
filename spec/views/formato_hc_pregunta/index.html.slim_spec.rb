require 'rails_helper'

RSpec.describe "formato_hc_pregunta/index", type: :view do
  before(:each) do
    assign(:formato_hc_pregunta, [
      FormatoHcPreguntum.create!(
        :formato_hc => "Formato Hc",
        :pregunta => "Pregunta",
        :obligatorio => "Obligatorio",
        :estado => "Estado"
      ),
      FormatoHcPreguntum.create!(
        :formato_hc => "Formato Hc",
        :pregunta => "Pregunta",
        :obligatorio => "Obligatorio",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of formato_hc_pregunta" do
    render
    assert_select "tr>td", :text => "Formato Hc".to_s, :count => 2
    assert_select "tr>td", :text => "Pregunta".to_s, :count => 2
    assert_select "tr>td", :text => "Obligatorio".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
