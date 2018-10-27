class QuestionMailer < ApplicationMailer
    def new_question(question)
        @question = question
        User.all.each do |user|
            mail(to: user.email, subject: "Nueva Pregunta en Application")
        end
    end
end
