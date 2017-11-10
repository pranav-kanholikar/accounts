class UserMailer < ApplicationMailer

    default :from => 'pranavkanholikar@gmail.com'
    def registration_confirmation(user)
        puts "step2......."
      @user = user
      @url = "http://portal.herokuapp.com/login"
      mail(:to => "pranavkanholikar@gmail.com", :subject => "Registered")
  
    end

end
