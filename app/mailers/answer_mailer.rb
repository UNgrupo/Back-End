class AnswerMailer < ApplicationMailer
    def new_answer(answer)
        @answer = answer
        User.all.each do |user|
            mail(to: user.email, subject: "Alguien ha respondido a tu pregunta")
        end
    end
end
