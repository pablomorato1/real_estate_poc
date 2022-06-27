# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'User' do
    label 'Users'
    list do
      field :id
      field :name
      field :email
    end

    edit do
      field :name
      field :email do
        required true
      end
      field :password
      field :password_confirmation
    end
  end
end
