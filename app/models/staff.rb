class Staff < ActiveRecord::Base
  puts "Staff loaded"
  Dir[File.join(Rails.root, 'app/controllers/staff/*.rb')].each do |f|
    require_dependency f
  end
end
