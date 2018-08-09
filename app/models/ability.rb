class Ability
  include CanCan::Ability
 
  def initialize(user)
  	can :read, :all  
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)
	if user.superadmin_role?
	      can :dashboard, :all
	      can :access, :rails_admin
	      can :manage, :all
	end
	if user.supervisor_role?
		  can :dashboard, :all
	      can :access, :rails_admin
	      can :manage, [User, Post]
	end
    
  end
end