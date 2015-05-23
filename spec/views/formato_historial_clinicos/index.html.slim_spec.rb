require 'rails_helper'

RSpec.describe "formato_historial_clinicos/index", type: :view do
  before(:each) do
    assign(:formato_historial_clinicos, [
      FormatoHistorialClinico.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado"
      ),
      FormatoHistorialClinico.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of formato_historial_clinicos" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
