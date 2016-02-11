class Staff < ActiveRecord::Base
  puts "Staff model loaded"
end
Dir[File.join(Rails.root, 'app/controllers/staff/*.rb')].each { |f| require_dependency f }