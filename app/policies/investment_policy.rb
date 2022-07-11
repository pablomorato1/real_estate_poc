class InvestmentPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.admin?
  end

  def new?
    create?
  end

  def show?
    create?
  end

  def edit?
    create?
  end

  def update?
    create?
  end

  def destroy?
    create?
  end

  def rails_admin?(action)
    case action
      when :destroy, :new
        true
      else
        super
    end
  end
end
