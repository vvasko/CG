class VacancyMailer < ApplicationMailer
  def user_vacancy_email email
    send_mail email, 'Thank you for your resume', 'user_vacancy_email'
  end

  def admin_vacancy_email email
    send_mail email, 'New resume received', 'admin_vacancy_email'
  end

  private
  def send_mail email, subject, template
    mail(to: email, subject: subject) do |format|
      format.html { render template }
      format.text { render text: 'Some email text' }
    end
  end
end