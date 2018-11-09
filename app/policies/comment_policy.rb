class CommentPolicy < TicketPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
