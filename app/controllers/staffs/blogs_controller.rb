class Staffs::BlogsController < ApplicationController
  puts "Staffs::BlogsController loaded"
  before_action :set_blog, only: [:show]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end
end
