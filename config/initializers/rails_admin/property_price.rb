# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'PropertyPrice' do
    list do
      field :id
      field :property do
        searchable :organization # This line doesn't work!!
      end
      field :price
      field :comment
      field :created_at
      field :updated_at
    end

    edit do
      field :property
      field :comment
      field :price do
        read_only true
      end
    end
  end
end
