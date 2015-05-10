require 'rails_helper'

RSpec.describe "specialities/index", type: :view do
  before(:each) do
    assign(:specialities, [
      Speciality.create!(
        :name => "Name",
        :descripcion => "Descripcion",
        :status => "Status"
      ),
      Speciality.create!(
        :name => "Name",
        :descripcion => "Descripcion",
        :status => "Status"
      )
    ])
  end

  it "renders a list of specialities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
