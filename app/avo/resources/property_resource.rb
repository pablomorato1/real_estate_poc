class PropertyResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :name, as: :text
  field :address, as: :text
  field :area, as: :number
  field :yield_plan, as: :text
  field :image, as: :file
  field :price, as: :number
  field :managed_equity, as: :number
  field :min_investment, as: :number, name: 'Minimum Investment'
end
