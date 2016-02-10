require 'rails_helper'

puts "Blogs spec"
RSpec.describe BlogsController, type: :controller do
  let!(:blog) { create :blog }
  describe 'GET #index' do
    example do
      get :index
      expect(response).to have_http_status :ok
    end
  end
  describe 'GET #show' do
    example do
      get :show, id: blog
      expect(response).to have_http_status :ok
    end
  end
end
