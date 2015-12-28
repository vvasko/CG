class VacancyMailer < ApplicationMailer

  def resume_email email
    @url = '/'
    mail to: email, subject: 'Thank you for your resume!'
  end
end
