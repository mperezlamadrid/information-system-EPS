require 'rails_helper'

RSpec.describe "specialities/show", type: :view do
  before(:each) do
    @speciality = assign(:speciality, Speciality.create!(
      :name => "Name",
      :descripcion => "Descripcion",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Status/)
  end
end
