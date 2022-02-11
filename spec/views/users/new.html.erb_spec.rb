require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      name: "MyText",
      username: "MyText",
      email: "MyText",
      password: "MyText"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "textarea[name=?]", "user[name]"

      assert_select "textarea[name=?]", "user[username]"

      assert_select "textarea[name=?]", "user[email]"

      assert_select "input[name=?]", "user[password]"
    end
  end
end
