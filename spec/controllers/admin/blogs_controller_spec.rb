require 'rails_helper'

RSpec.describe Admin::BlogsController, type: :controller do
  describe 'GET #index' do
    example do
      get :index
      expect(response).to have_http_status :ok
    end
  end
  describe 'GET #show' do
    let!(:blog) { create :blog }
    example do
      get :show, id: blog
      expect(response).to have_http_status :ok
    end
  end
end
