class Section < ActiveRecord::Base
  has_many :posts, order: 'created_at DESC', conditions: { public: true }

  def self.for_select
    self.all.map{|s| [s.name, s.id]}
  end

end
