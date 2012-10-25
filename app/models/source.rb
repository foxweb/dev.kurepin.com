class Source < ActiveRecord::Base
  attr_accessible :author, :category_id, :description, :email, :md5, :name, :rating, :section_id, :www
  belongs_to :section
  belongs_to :category
end
