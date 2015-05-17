require 'rails_helper'

RSpec.describe "sedes/show", type: :view do
  before(:each) do
    @sede = assign(:sede, Sede.create!(
      :nombre => "Nombre",
      :descripcion => "Descripcion",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Estado/)
  end
end
