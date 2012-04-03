class Post < ActiveRecord::Base
	belongs_to :type
	belongs_to :section
	validates :title, :presence => true, :length => { :minimum => 5 }
    has_many :comments, :dependent => :destroy
end
