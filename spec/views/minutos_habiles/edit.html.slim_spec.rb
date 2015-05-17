require 'rails_helper'

RSpec.describe "minutos_habiles/edit", type: :view do
  before(:each) do
    @minutos_habile = assign(:minutos_habile, MinutosHabile.create!(
      :minuto => 1,
      :estado => "MyString"
    ))
  end

  it "renders the edit minutos_habile form" do
    render

    assert_select "form[action=?][method=?]", minutos_habile_path(@minutos_habile), "post" do

      assert_select "input#minutos_habile_minuto[name=?]", "minutos_habile[minuto]"

      assert_select "input#minutos_habile_estado[name=?]", "minutos_habile[estado]"
    end
  end
end
