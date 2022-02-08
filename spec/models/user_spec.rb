require 'rails_helper'
require 'validates_email_format_of/rspec_matcher'

describe User do
  it { should validate_email_format_of(:email).with_message('That\'s not an email!') }
  
  it 'is invalid if email is incorrect format' do
    expect(User.new({username: 'username', name: 'name', password: 'password', email: 'not_an_email'}).valid?).to be_falsey
  end

  it 'is invalid if password is too short' do
    expect(User.new({username: 'username', name: 'name', password: 'pass', email: 'e@mail'}).valid?).to be_falsey
  end

  it 'is invalid if username does not exist' do
    expect(User.new({username: nil, name: 'name', password: 'password', email: 'e@mail'}).valid?).to be_falsey
  end

  it 'is invalid if name does not exist' do
    expect(User.new({username: 'username', name: nil, password: 'password', email: 'e@mail'}).valid?).to be_falsey
  end

  it 'is invalid if password does not exist' do
    expect(User.new({username: 'username', name: 'name', password: nil, email: 'e@mail'}).valid?).to be_falsey
  end

  it 'is invalid if name does not exist' do
    expect(User.new({username: 'username', name: 'name', password: 'password', email: nil}).valid?).to be_falsey
  end
end
