class Section < ActiveRecord::Base
	has_many :posts, :order => 'created_at DESC', :conditions => { :public => '1' }
end
