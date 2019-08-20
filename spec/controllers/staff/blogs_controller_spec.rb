require 'rails_helper'

puts "staff/blogs_controller_spec.rb loaded"
RSpec.describe Staff::BlogsController, type: :controller do
  let!(:blog) { create :blog, :draft }
  describe 'GET #index' do
    it '下書きのブログも含まれる' do
      get :index
      expect(assigns(:blogs)).to eq [blog]
    end
  end
  describe 'GET #show' do
    it '下書きのブログも表示できる' do
      get :show, params: { id: blog }
      expect(assigns(:blog)).to eq blog
    end
  end
end
