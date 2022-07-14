module DashboardHelper
  def mock_data
    {"freeValue": 50, "assessedValue": 100, "investedValue": 200, "income": "300"}
  end

  def render_header
    'dashboard/header'
  end
end
