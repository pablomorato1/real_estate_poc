class PortfolioController < ApplicationController
  before_action :authenticate_user!

  def index
    @properties = Property.all.order(created_at: :asc)
    @active_assets = [
        {
            id: 'cl5qh8j0u0762a4rsn4gtayfe',
            investedTotal: 62779,
            equityCost: 62779,
            equity: 21.81174475891349,
            income: 0,
            projectedYield: 14,
            effort: 'passive',
            createdAt: '2022-07-18T08:20:29.646Z',
            soldAt: nil,
            userId: 1,
            propertyId: 1,
        },
        {
            id: 'cl5qh8r280869a4rsimfb7x14',
            investedTotal: 136818,
            equityCost: 136818,
            equity: 31.04412995977047,
            income: 0,
            projectedYield: 15,
            effort: 'passive',
            createdAt: '2022-07-18T08:20:40.064Z',
            soldAt: nil,
            userId: 1,
            propertyId: 2,
        },
        {
            id: 'cl5qh8mzo0815a4rs70t10a6j',
            investedTotal: 20771,
            equityCost: 20771,
            equity: 42.9374677002584,
            income: 1255,
            projectedYield: 14,
            effort: 'passive',
            createdAt: '2022-07-18T08:20:34.788Z',
            soldAt: nil,
            userId: 1,
            propertyId: 3,
        },
    ]

    @archived_assets = [
      {
        "id": "cl5qh8dzp0710a4rs9iq90yiv",
        "investedTotal": 265995,
        "equityCost": 265995,
        "equity": 35.83148110729441,
        "income": 1377,
        "projectedYield": 11,
        "effort": "active",
        "createdAt": "2022-07-18T08:20:23.125Z",
        "soldAt": "2022-07-18T08:21:18.392Z",
        "userId": 1,
        "propertyId": 5
      }
    ]
  end

end
