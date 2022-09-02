# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview
  def first_access
    UserMailer.with(user: User.first, password: SecureRandom.alphanumeric).first_access
  end
end
