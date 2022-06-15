# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'Property' do
    list do
      field :id
      field :name
      field :address
      field :area
      field :yield_plan
      field :price
      field :created_at
      field :updated_at
    end

    edit do
      field :name
      field :address
      field :area
      field :price
      field :yield_plan
    end
  end
end
