class CommentPolicy < ApplicationPolicy
  def new
    new?
  end

  def create
    create?
  end

end