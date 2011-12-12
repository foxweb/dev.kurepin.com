class Post < ActiveRecord::Base
	belongs_to :type
	belongs_to :section
end
