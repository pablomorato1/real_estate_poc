class PropertyPolicy < ApplicationPolicy
  def rails_admin?(action)
    case action
      when :destroy, :new
        true
      else
        super
    end
  end
end
