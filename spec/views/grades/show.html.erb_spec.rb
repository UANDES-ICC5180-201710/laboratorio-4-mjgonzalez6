require 'rails_helper'

RSpec.describe "grades/show", type: :view do
  before(:each) do
    @grade = assign(:grade, Grade.create!(
      :person => nil,
      :assignment => nil,
      :value => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
  end
end
