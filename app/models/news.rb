class News < ActiveRecord::Base
	scope :by_date, lambda { |year, month, day| where("DATE(news.created_at) = ?", Date.new(year, month, day).to_s) }
end
