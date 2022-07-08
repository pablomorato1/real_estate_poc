class UserRoleFilter < Avo::Filters::SelectFilter
  self.name = "Per Role"

  def apply(request, query, value)
    case value
    when 'guest'
      query.where(role: 'guest')
    when 'admin'
      query.where(role: 'admin')
    when 'client'
      query.where(role: 'client')
    else
      query
    end
  end

  def options
    {
      guest: 'Guest',
      admin: 'Admin',
      client: 'Client',
    }
  end
end
