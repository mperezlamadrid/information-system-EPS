require 'rails_helper'

RSpec.describe "hora_habils/show", type: :view do
  before(:each) do
    @hora_habil = assign(:hora_habil, HoraHabil.create!(
      :hora => 1,
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Estado/)
  end
end
