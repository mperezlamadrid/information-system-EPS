require 'rails_helper'

RSpec.describe "hora_habils/index", type: :view do
  before(:each) do
    assign(:hora_habils, [
      HoraHabil.create!(
        :hora => 1,
        :estado => "Estado"
      ),
      HoraHabil.create!(
        :hora => 1,
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of hora_habils" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
