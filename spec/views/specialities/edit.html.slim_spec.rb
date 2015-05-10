require 'rails_helper'

RSpec.describe "specialities/edit", type: :view do
  before(:each) do
    @speciality = assign(:speciality, Speciality.create!(
      :name => "MyString",
      :descripcion => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit speciality form" do
    render

    assert_select "form[action=?][method=?]", speciality_path(@speciality), "post" do

      assert_select "input#speciality_name[name=?]", "speciality[name]"

      assert_select "input#speciality_descripcion[name=?]", "speciality[descripcion]"

      assert_select "input#speciality_status[name=?]", "speciality[status]"
    end
  end
end
