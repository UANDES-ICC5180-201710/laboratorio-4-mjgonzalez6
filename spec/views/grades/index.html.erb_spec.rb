require 'rails_helper'

RSpec.describe "grades/index", type: :view do
  before(:each) do
    assign(:grades, [
      Grade.create!(
        :person => nil,
        :assignment => nil,
        :value => 2.5
      ),
      Grade.create!(
        :person => nil,
        :assignment => nil,
        :value => 2.5
      )
    ])
  end

  it "renders a list of grades" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
