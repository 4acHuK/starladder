class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :create, Team if user.team.blank?
      can :menage, Team, user_id: user.id
      if user.team.present?
        can :leave_tournament, Tournament do |tournament|
          tournament.teams.include?(user.team)
        end
        can :enter_tournament, Tournament do |tournament|
          tournament.teams.exclude?(user.team)
        end
      end
    end
  end
end
