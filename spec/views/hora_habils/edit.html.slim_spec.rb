require 'rails_helper'

RSpec.describe "hora_habils/edit", type: :view do
  before(:each) do
    @hora_habil = assign(:hora_habil, HoraHabil.create!(
      :hora => 1,
      :estado => "MyString"
    ))
  end

  it "renders the edit hora_habil form" do
    render

    assert_select "form[action=?][method=?]", hora_habil_path(@hora_habil), "post" do

      assert_select "input#hora_habil_hora[name=?]", "hora_habil[hora]"

      assert_select "input#hora_habil_estado[name=?]", "hora_habil[estado]"
    end
  end
end
