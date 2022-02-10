require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET /new ' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      post :create, params: { user: { name: 'name', username: 'username', email: 'email@test.com', password: 'password' } }
      expect(response).to redirect_to(posts_url)
    end

    it 'creates a user' do
      post :create, params: { user: { name: 'name', username: 'username', email: 'email@test.com', password: 'password' } }
      expect(User.find_by(email: 'email@test.com')).to be
    end

    it 'deletes a user' do
      delete :create, params: { user: { name: 'name', username: 'username', email: 'email@test.com', password: 'password' } }
      expect(User.find_by(id: @user)).to_not be
    end
  end

  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
