# frozen_string_literal: true

class PropertiesController < ApplicationController
  before_action :authenticate_user!

  def show
    @property = Property.find(params[:id])
    @cost_transactions = [
      {
        "id": "cl5qh8xp50954a4rsmf2zq9g0",
        "createdAt": "2022-07-18T08:20:48.665Z",
        "type": "EARNING",
        "value": 311,
        "name": "Earnings for \"Renner Inc\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8mzo0815a4rs70t10a6j",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9b3y1114a4rs9c125yrs",
        "createdAt": "2022-07-18T08:21:06.046Z",
        "type": "EARNING",
        "value": 944,
        "name": "Earnings for \"Renner Inc\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8mzo0815a4rs70t10a6j",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9djp1143a4rs63xj5py2",
        "createdAt": "2022-07-18T08:21:09.204Z",
        "type": "EARNING",
        "value": 517,
        "name": "Earnings for \"Dare, Wunsch and Mosciski\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8dzp0710a4rs9iq90yiv",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9fvb1173a4rs9wi95nph",
        "createdAt": "2022-07-18T08:21:12.215Z",
        "type": "PAYOUT",
        "value": 653,
        "name": "Payout for \"Dare, Wunsch and Mosciski\"",
        "description": "communal payments",
        "annual": nil,
        "report": nil,
        "assetId": "cl5qh8dzp0710a4rs9iq90yiv",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9hi61195a4rs6x0ouuy0",
        "createdAt": "2022-07-18T08:21:14.334Z",
        "type": "EARNING",
        "value": 860,
        "name": "Earnings for \"Dare, Wunsch and Mosciski\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8dzp0710a4rs9iq90yiv",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      }
    ]
    @profit_transactions = [
      {
        "id": "cl5qh8xp50954a4rsmf2zq9g0",
        "createdAt": "2022-07-18T08:20:48.665Z",
        "type": "EARNING",
        "value": 311,
        "name": "Earnings for \"Renner Inc\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8mzo0815a4rs70t10a6j",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9b3y1114a4rs9c125yrs",
        "createdAt": "2022-07-18T08:21:06.046Z",
        "type": "EARNING",
        "value": 944,
        "name": "Earnings for \"Renner Inc\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8mzo0815a4rs70t10a6j",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9djp1143a4rs63xj5py2",
        "createdAt": "2022-07-18T08:21:09.204Z",
        "type": "EARNING",
        "value": 517,
        "name": "Earnings for \"Dare, Wunsch and Mosciski\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8dzp0710a4rs9iq90yiv",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9fvb1173a4rs9wi95nph",
        "createdAt": "2022-07-18T08:21:12.215Z",
        "type": "PAYOUT",
        "value": 653,
        "name": "Payout for \"Dare, Wunsch and Mosciski\"",
        "description": "communal payments",
        "annual": nil,
        "report": nil,
        "assetId": "cl5qh8dzp0710a4rs9iq90yiv",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh9hi61195a4rs6x0ouuy0",
        "createdAt": "2022-07-18T08:21:14.334Z",
        "type": "EARNING",
        "value": 860,
        "name": "Earnings for \"Dare, Wunsch and Mosciski\"",
        "description": "earnings",
        "annual": 9.12,
        "report": "https://si-test-app.herokuapp.com//_next/image?url=%2Fimages%2Fpersonal-manager-avatar.png&w=48&q=100",
        "assetId": "cl5qh8dzp0710a4rs9iq90yiv",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      }
    ]
  end
end
