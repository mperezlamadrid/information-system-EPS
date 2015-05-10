require 'rails_helper'

RSpec.describe "specialities/new", type: :view do
  before(:each) do
    assign(:speciality, Speciality.new(
      :name => "MyString",
      :descripcion => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new speciality form" do
    render

    assert_select "form[action=?][method=?]", specialities_path, "post" do

      assert_select "input#speciality_name[name=?]", "speciality[name]"

      assert_select "input#speciality_descripcion[name=?]", "speciality[descripcion]"

      assert_select "input#speciality_status[name=?]", "speciality[status]"
    end
  end
end
