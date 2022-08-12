# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'Transaction' do

    list do
      field :id
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
      field :originable
      field :wallet
      field :annual_percentage
      field :money_quantity
      field :report_url
      field :transaction_type, :active_record_enum
    end
  end
end
