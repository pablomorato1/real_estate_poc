# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'Share' do
    edit do
      field :property
      field :equity
      field :planned_yield
      field :price
    end
  end
end
