# Preview all emails at http://localhost:3000/rails/mailers/vacancy_mailer
class VacancyMailerPreview < ActionMailer::Preview
  def user_vacancy_email
    VacancyMailer.user_vacancy_email "user@gmail.com"
  end
  def admin_vacancy_email
    VacancyMailer.admin_vacancy_email "admin@gmail.com"
  end
end