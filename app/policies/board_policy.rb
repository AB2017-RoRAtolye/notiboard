class BoardPolicy < ApplicationPolicy

  def update?
    @record.owners.include? @user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
