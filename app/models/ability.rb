class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new # guest user (not logged in)
       if user.is_admin?
         can :manage, :all
       elsif user.status != nil #there has to be a way to say signed in user who is not admin
         can :manage, Gear, :user_id => user.id
         # having trouble with the above and below. How can I create gear only for a certain user? also, not letting me manager gear that signed in user owns
         # how come I can manage users on their profile, but not in the index?
         can :manage, User, :id => user.id
         can :read, :all
       else
         can :read, [Tournament, User]
       end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
