class UserPolicy
  attr_reader :current_user, :model
  before_action :authenticate_user!

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def index?
    @current_user.admin? or @current_user == @user
  end

  def show?
    @current_user.admin? or @current_user == @user
  end

  def update?
    @current_user.admin? or @current_user == @user
  end

  def destroy?
    return false if @current_user == @user
    @current_user.admin?
  end
  

end
