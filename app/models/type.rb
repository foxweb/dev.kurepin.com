class Type < ActiveRecord::Base
	has_many :posts

  def self.for_select
    self.all.map{|s| [s.name, s.id]}
  end

end
