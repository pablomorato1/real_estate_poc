# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'Wallet' do
    object_label_method do
      :to_s
    end
  end
end
