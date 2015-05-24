require 'rails_helper'

RSpec.describe "formato_hc_pregunta/new", type: :view do
  before(:each) do
    assign(:formato_hc_preguntum, FormatoHcPreguntum.new(
      :formato_hc => "MyString",
      :pregunta => "MyString",
      :obligatorio => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders new formato_hc_preguntum form" do
    render

    assert_select "form[action=?][method=?]", formato_hc_pregunta_path, "post" do

      assert_select "input#formato_hc_preguntum_formato_hc[name=?]", "formato_hc_preguntum[formato_hc]"

      assert_select "input#formato_hc_preguntum_pregunta[name=?]", "formato_hc_preguntum[pregunta]"

      assert_select "input#formato_hc_preguntum_obligatorio[name=?]", "formato_hc_preguntum[obligatorio]"

      assert_select "input#formato_hc_preguntum_estado[name=?]", "formato_hc_preguntum[estado]"
    end
  end
end
