module DashboardHelper
  def mock_data
    {"freeValue": '51 234 $', "assessedValue": '100 432 $', "investedValue": '200 $', "income": "300 $"}
  end

  def render_header
    'dashboard/header'
  end
end
