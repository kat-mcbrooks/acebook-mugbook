require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "MyText",
        username: "MyText",
        email: "MyText@email.com",
        password: "MyText1"
      ),
      User.create!(
        name: "MyText",
        username: "MyText",
        email: "MyText1@email.com",
        password: "MyText1"
      )
    ])
  end

  xit "renders a list of users" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
