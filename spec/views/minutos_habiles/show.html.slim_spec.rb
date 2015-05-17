require 'rails_helper'

RSpec.describe "minutos_habiles/show", type: :view do
  before(:each) do
    @minutos_habile = assign(:minutos_habile, MinutosHabile.create!(
      :minuto => 1,
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Estado/)
  end
end
