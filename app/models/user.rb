class User < ActiveRecord::Base
  has_many :wikis
  
  
  def standard?
    role == 'standard'
  end

  def admin?
    role == 'admin'
  end

  def premium?
    role == 'premium'
  end
  
  
  
end
