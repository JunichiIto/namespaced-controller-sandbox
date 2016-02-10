class Blog < ActiveRecord::Base
  scope :without_draft, -> { where(draft: false) }
end
