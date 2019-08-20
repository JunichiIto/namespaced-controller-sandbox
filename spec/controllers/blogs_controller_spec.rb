require 'rails_helper'

puts "blogs_controller_spec.rb loaded"
RSpec.describe BlogsController, type: :controller do
  let!(:blog) { create :blog, :draft }
  describe 'GET #index' do
    it '下書きのブログは含まれない' do
      get :index
      expect(assigns(:blogs)).to eq []
    end
  end
  describe 'GET #show' do
    it '下書きのブログは表示できない' do
      expect { get :show, params: { id: blog } }.to raise_error ActiveRecord::RecordNotFound
    end
  end
end
