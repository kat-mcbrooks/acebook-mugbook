require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe User do
  user = User.new()
  it 'should create a new user with username, email, password properties' do
    user.username = 'Victoria'
    user.email = 'test@test.com'
    user.password = '123456'
    expect(user.username).to eq 'Victoria'
  end
end
