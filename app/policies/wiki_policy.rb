class WikiPolicy < ApplicationPolicy
  
  
  def show?
    record.public? || user.present?
  end

  def make_private?
    user_is?('premium', 'admin')
  end
end