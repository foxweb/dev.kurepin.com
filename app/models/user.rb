class User < ActiveRecord::Base
  include Clearance::User

  def has_role? namespace
    true
  end

end
