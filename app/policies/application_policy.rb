# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end

  # rails admin integration

  def rails_admin?(action)
    case action
      when :dashboard
        user.admin?
      when :index
        user.admin?
      when :show
        user.admin?
      when :new
        user.admin?
      when :edit
        user.admin?
      when :destroy
        user.admin?
      when :export
        user.admin?
      when :history
        user.admin?
      when :show_in_app
        user.admin?
      else
        raise ::Pundit::NotDefinedError, "unable to find policy #{action} for #{record}."
    end
  end

  # Hash of initial attributes for :new, :create and :update actions. This is optional
  # def attributes_for(action)
  # end
end
