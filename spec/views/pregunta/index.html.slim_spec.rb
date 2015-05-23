require 'rails_helper'

RSpec.describe "pregunta/index", type: :view do
  before(:each) do
    assign(:pregunta, [
      Preguntum.create!(
        :pregunta => "Pregunta",
        :tipo => "Tipo",
        :respuestas_cerrada => nil,
        :estado => "Estado"
      ),
      Preguntum.create!(
        :pregunta => "Pregunta",
        :tipo => "Tipo",
        :respuestas_cerrada => nil,
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of pregunta" do
    render
    assert_select "tr>td", :text => "Pregunta".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
