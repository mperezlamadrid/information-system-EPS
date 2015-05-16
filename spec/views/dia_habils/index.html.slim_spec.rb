require 'rails_helper'

RSpec.describe "dia_habils/index", type: :view do
  before(:each) do
    assign(:dia_habils, [
      DiaHabil.create!(
        :nombre => "Nombre",
        :estado => "Estado"
      ),
      DiaHabil.create!(
        :nombre => "Nombre",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of dia_habils" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
