class Helpers
  
  def self.current_user(session)
    User.find(session[:user_id])
  end
  
  def self.is_logged_in?(session)
    user = User.find(session[:user_id])
    if user
      true
    else
      false
    end
  end
  
end