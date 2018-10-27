class UserMailer < ApplicationMailer
    def new_user(user)
        @user = user
        User.all.each do |user|
            mail(to: user.email, subject: "Te has registrado en la Application")
        end
    end

end
