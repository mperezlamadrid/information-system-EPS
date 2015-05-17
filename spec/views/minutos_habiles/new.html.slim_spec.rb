require 'rails_helper'

RSpec.describe "minutos_habiles/new", type: :view do
  before(:each) do
    assign(:minutos_habile, MinutosHabile.new(
      :minuto => 1,
      :estado => "MyString"
    ))
  end

  it "renders new minutos_habile form" do
    render

    assert_select "form[action=?][method=?]", minutos_habiles_path, "post" do

      assert_select "input#minutos_habile_minuto[name=?]", "minutos_habile[minuto]"

      assert_select "input#minutos_habile_estado[name=?]", "minutos_habile[estado]"
    end
  end
end
