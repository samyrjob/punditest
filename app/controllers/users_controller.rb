class Users::RegistrationsController < Devise::RegistrationsController
  def create
    #Code for '/users' route to be here
  end

  def student
    #Code for '/users/promo' route to be here
    @user = User.new(post_params)
    if @user.save
      current_user.add_role :student
    end
  end

  def company
    #Code for '/users/promo' route to be here
    if @user.save
      current_user.add_role :company
    end
  end

end
