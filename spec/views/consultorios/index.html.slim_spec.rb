require 'rails_helper'

RSpec.describe "consultorios/index", type: :view do
  before(:each) do
    assign(:consultorios, [
      Consultorio.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado",
        :sede => nil
      ),
      Consultorio.create!(
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :estado => "Estado",
        :sede => nil
      )
    ])
  end

  it "renders a list of consultorios" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
