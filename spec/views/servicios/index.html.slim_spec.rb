require 'rails_helper'

RSpec.describe "servicios/index", type: :view do
  before(:each) do
    assign(:servicios, [
      Servicio.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado"
      ),
      Servicio.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of servicios" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
