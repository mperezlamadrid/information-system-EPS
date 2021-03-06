require 'rails_helper'

RSpec.describe "convenios/new", type: :view do
  before(:each) do
    assign(:convenio, Convenio.new(
      :nombre => "MyString",
      :descripcion => "MyString",
      :estado => ""
    ))
  end

  it "renders new convenio form" do
    render

    assert_select "form[action=?][method=?]", convenios_path, "post" do

      assert_select "input#convenio_nombre[name=?]", "convenio[nombre]"

      assert_select "input#convenio_descripcion[name=?]", "convenio[descripcion]"

      assert_select "input#convenio_estado[name=?]", "convenio[estado]"
    end
  end
end
