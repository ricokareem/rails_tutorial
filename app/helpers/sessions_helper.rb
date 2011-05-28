module SessionsHelper
  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    current_user = user
  end
  
  #Setter method
  def current_user=(user)
    @current_user = user
  end
  
  #Getter method
  def current_user
    @current_user || user_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def sign_out
    cookies.delete(:remember_token)
    current_user = nil
    # self.current_user = nil 
    #not sure why the self is necessary, made change in spec_helper.rb to use without
    
  end
  
  private
  
    def user_from_remember_token
      User.authenticate_with_salt(*remember_token)
    end
    
    def remember_token
      cookies.signed[:remember_token] || [nil,nil]
    end
end
