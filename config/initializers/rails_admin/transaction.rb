# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'Transaction' do

    list do
      field :id
      field :wallet
      field :title
      field :description
      field :status
      field :annual_percentage
      field :money_quantity
      field :transaction_type
      field :created_at
      field :updated_at
    end

    edit do
      field :title
      field :description
      field :wallet
      field :originable do
        label 'Origin Object'
      end
      field :annual_percentage
      field :money_quantity
      field :report_url
      field :transaction_type, :enum
    end
  end
end
