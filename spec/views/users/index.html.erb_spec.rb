require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "name",
        username: "username",
        email: "test1@email.com",
        password_digest: "password"
      ),
      User.create!(
        name: "name",
        username: "username",
        email: "test2@email.com",
        password_digest: "password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "name".to_s, count: 2
    assert_select "tr>td", text: "username".to_s, count: 2
    assert_select "tr>td", text: "test1@email.com".to_s, count: 1
    assert_select "tr>td", text: "test2@email.com".to_s, count: 1
    assert_select "tr>td", text: "password".to_s, count: 2
  end
end
