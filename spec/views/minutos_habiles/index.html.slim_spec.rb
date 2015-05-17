require 'rails_helper'

RSpec.describe "minutos_habiles/index", type: :view do
  before(:each) do
    assign(:minutos_habiles, [
      MinutosHabile.create!(
        :minuto => 1,
        :estado => "Estado"
      ),
      MinutosHabile.create!(
        :minuto => 1,
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of minutos_habiles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
