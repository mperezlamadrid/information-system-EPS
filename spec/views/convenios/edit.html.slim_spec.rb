require 'rails_helper'

RSpec.describe "convenios/edit", type: :view do
  before(:each) do
    @convenio = assign(:convenio, Convenio.create!(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estato => ""
    ))
  end

  it "renders the edit convenio form" do
    render

    assert_select "form[action=?][method=?]", convenio_path(@convenio), "post" do

      assert_select "input#convenio_nombre[name=?]", "convenio[nombre]"

      assert_select "input#convenio_descripcion[name=?]", "convenio[descripcion]"

      assert_select "input#convenio_estato[name=?]", "convenio[estato]"
    end
  end
end
