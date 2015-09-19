class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
  
  def downgrade_wikis
    Wiki.where(user: self, public: false).each do |wiki|
      wiki.update_attributes(public: true)
    end
  end
  
  
  
end
