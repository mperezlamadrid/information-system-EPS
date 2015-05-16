require 'rails_helper'

RSpec.describe "dia_habils/show", type: :view do
  before(:each) do
    @dia_habil = assign(:dia_habil, DiaHabil.create!(
      :nombre => "Nombre",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Estado/)
  end
end
