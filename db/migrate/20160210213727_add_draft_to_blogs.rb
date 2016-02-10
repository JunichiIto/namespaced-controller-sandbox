class AddDraftToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :draft, :boolean, default: false, null: false
  end
end
