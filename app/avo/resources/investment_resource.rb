class InvestmentResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :user, as: :belongs_to
  field :productable, as: :belongs_to, polymorphic_as: :productable, types: [::Property]
  field :value, as: :number
  field :product_equity, as: :number
end
