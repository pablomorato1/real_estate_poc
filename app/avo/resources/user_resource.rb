class UserResource < Avo::BaseResource
  self.devise_password_optional = true

  self.title = :name
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :name, as: :text
  field :email, as: :text
  field :password, as: :password, placeholder: ''
  field :password_confirmation, as: :password, placeholder: ''
  field :role, as: :select, enum: ::User.roles, display_with_value: true, placeholder: 'Select User Role'
end
