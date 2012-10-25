class Link < ActiveRecord::Base
  attr_accessible :author, :description, :email, :keywords, :rating, :title, :url
end
