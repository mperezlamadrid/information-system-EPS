require 'rails_helper'

RSpec.describe "sedes/index", type: :view do
  before(:each) do
    assign(:sedes, [
      Sede.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado"
      ),
      Sede.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of sedes" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
