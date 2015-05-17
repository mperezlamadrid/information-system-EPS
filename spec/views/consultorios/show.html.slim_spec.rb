require 'rails_helper'

RSpec.describe "consultorios/show", type: :view do
  before(:each) do
    @consultorio = assign(:consultorio, Consultorio.create!(
      :nombre => "Nombre",
      :descripcion => "Descripcion",
      :estado => "Estado",
      :sede => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(//)
  end
end
