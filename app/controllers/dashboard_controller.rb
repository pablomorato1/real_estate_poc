class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @promotions = [
      {
        "id": "cl5qh7x2n0163a4rskvqthpu3",
        "name": "Conroy LLC",
        "name2": "85989 Newell Parkway Suite 837",
        "showInDashboard": true,
        "minInvest": 3048,
        "costPerMeter": 7836,
        "costTotal": 1802280,
        "equity": 100,
        "projectedYield": [
          6,
          21
        ],
        "thumbnail": "http://loremflickr.com/140/140/city?33894",
        "images": [
          "http://loremflickr.com/640/480/city?61013",
          "http://loremflickr.com/640/480/city?41977",
          "http://loremflickr.com/640/480/city?35653",
          "http://loremflickr.com/640/480/city?12942",
          "http://loremflickr.com/640/480/city?60882",
          "http://loremflickr.com/640/480/city?76356",
          "http://loremflickr.com/640/480/city?36244"
        ],
        "effort": "PASSIVE"
      },
      {
        "id": "cl5qh7yox0233a4rsbdzr5fkj",
        "name": "Effertz LLC",
        "name2": "5381 Blair Spring Suite 746",
        "showInDashboard": true,
        "minInvest": 17224,
        "costPerMeter": 1431,
        "costTotal": 124497,
        "equity": 100,
        "projectedYield": [
          5,
          16
        ],
        "thumbnail": "http://loremflickr.com/140/140/city?29040",
        "images": [
          "http://loremflickr.com/640/480/city?62051",
          "http://loremflickr.com/640/480/city?14340"
        ],
        "effort": "PASSIVE"
      },
      {
        "id": "cl5qh7zid0274a4rso28ad9a5",
        "name": "Balistreri, Cummings and Anderson",
        "name2": "538 Emmerich Gateway Apt. 654",
        "showInDashboard": true,
        "minInvest": 3657,
        "costPerMeter": 7522,
        "costTotal": 819898,
        "equity": 100,
        "projectedYield": [
          12,
          23
        ],
        "thumbnail": "http://loremflickr.com/140/140/city?7874",
        "images": [
          "http://loremflickr.com/640/480/city?27054",
          "http://loremflickr.com/640/480/city?77539",
          "http://loremflickr.com/640/480/city?32883",
          "http://loremflickr.com/640/480/city?30538",
          "http://loremflickr.com/640/480/city?12403",
          "http://loremflickr.com/640/480/city?10022",
          "http://loremflickr.com/640/480/city?43759"
        ],
        "effort": "PASSIVE"
      },
      {
        "id": "cl5qh7w9e0140a4rsck5a1tfv",
        "name": "Renner Inc",
        "name2": "1298 Kattie Falls Apt. 961",
        "showInDashboard": true,
        "minInvest": 5904,
        "costPerMeter": 1125,
        "costTotal": 48375,
        "equity": 57.0625322997416,
        "projectedYield": [
          14,
          24
        ],
        "thumbnail": "http://loremflickr.com/140/140/city?43420",
        "images": [
          "http://loremflickr.com/640/480/city?37546",
          "http://loremflickr.com/640/480/city?69311",
          "http://loremflickr.com/640/480/city?73512",
          "http://loremflickr.com/640/480/city?51180",
          "http://loremflickr.com/640/480/city?22782"
        ],
        "effort": "PASSIVE"
      }
    ]
    @transactions = [
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

  def turbo_frame_test
    '111'
  end
end
