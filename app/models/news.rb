class News < ActiveRecord::Base
	scope :by_date, lambda { |year, month, day| where("DATE(created_at) = ?", Date.new(year.to_i, month.to_i, day.to_i)) }
end
