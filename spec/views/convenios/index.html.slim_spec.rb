require 'rails_helper'

RSpec.describe "convenios/index", type: :view do
  before(:each) do
    assign(:convenios, [
      Convenio.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estato => ""
      ),
      Convenio.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estato => ""
      )
    ])
  end

  it "renders a list of convenios" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
