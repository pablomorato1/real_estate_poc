# config/initializers/rails_admin.rb

RailsAdmin.config do |config|
  config.model 'Property' do
    list do
      field :id
      field :name
      field :address
      field :prop_type
      field :area
      field :price
      field :min_investment do
        label 'Minimum Investment'
      end
      field :min_equity do
        label 'Minimum Equity'
      end
      field :yield_plan do
        label 'Projected Yield'
      end
      field :created_at
      field :updated_at
    end

    show do
      field :name
      field :address
      field :prop_type, :active_record_enum
      field :area
      field :square_meter_cost
      field :price
      field :min_investment do
        label 'Minimum Investment'
      end
      field :min_equity do
        label 'Minimum Equity'
      end
      field :yield_plan do
        label 'Projected Yield'
      end
      field :presentation_url
      field :image, :active_storage
      field :property_prices do
        label 'Price History'
      end
    end

    edit do
      field :name
      field :address
      field :prop_type, :active_record_enum
      field :area
      field :price
      field :min_investment do
        label 'Minimum Investment'
      end
      field :min_equity do
        label 'Minimum Equity'
      end
      field :yield_plan do
        label 'Projected Yield'
      end
      field :presentation_url
      field :image, :active_storage
    end
  end
end
