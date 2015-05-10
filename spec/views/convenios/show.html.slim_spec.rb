require 'rails_helper'

RSpec.describe "convenios/show", type: :view do
  before(:each) do
    @convenio = assign(:convenio, Convenio.create!(
      :nombre => "Nombre",
      :descripcion => "Descripcion",
      :estado => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(//)
  end
end
