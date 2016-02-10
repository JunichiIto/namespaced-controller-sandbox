require 'rails_helper'

puts "Staff blogs spec"
RSpec.describe Staff::BlogsController, type: :controller do
  let!(:staff) { create :staff }
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
