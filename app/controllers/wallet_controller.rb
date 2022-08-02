class WalletController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = [
      {
        "id": "cl5qh9jts1225a4rs5l4dmlwg",
        "createdAt": "2022-07-18T08:21:17.344Z",
        "type": "SELL_ASSET",
        "value": 265995,
        "name": "Sell asset \"Dare, Wunsch and Mosciski\"",
        "description": "sell whole asset",
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
        "id": "cl5qh99ml1096a4rs3p0fbhxr",
        "createdAt": "2022-07-18T08:21:04.125Z",
        "type": "WITHDRAWAL",
        "value": 2411,
        "name": "Withdrawal of money",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh984n1077a4rs96z2hfbq",
        "createdAt": "2022-07-18T08:21:02.183Z",
        "type": "REPLENISHMENT",
        "value": 2143,
        "name": "Wallet replenishment",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh96n11059a4rsoowt77w3",
        "createdAt": "2022-07-18T08:21:00.253Z",
        "type": "WITHDRAWAL",
        "value": 2013,
        "name": "Withdrawal of money",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh95561040a4rsxpyatkl8",
        "createdAt": "2022-07-18T08:20:58.314Z",
        "type": "REPLENISHMENT",
        "value": 1837,
        "name": "Wallet replenishment",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh93nu1022a4rsfsvtzwv3",
        "createdAt": "2022-07-18T08:20:56.394Z",
        "type": "REPLENISHMENT",
        "value": 1037,
        "name": "Wallet replenishment",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh92541003a4rsfgkis9q3",
        "createdAt": "2022-07-18T08:20:54.424Z",
        "type": "REPLENISHMENT",
        "value": 2066,
        "name": "Wallet replenishment",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh90jm0984a4rsrlz7j0sx",
        "createdAt": "2022-07-18T08:20:52.354Z",
        "type": "WITHDRAWAL",
        "value": 2416,
        "name": "Withdrawal of money",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
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
        "id": "cl5qh8w2u0935a4rsddgq3xw7",
        "createdAt": "2022-07-18T08:20:46.566Z",
        "type": "WITHDRAWAL",
        "value": 2031,
        "name": "Withdrawal of money",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh8ulg0916a4rsk44c2lzv",
        "createdAt": "2022-07-18T08:20:44.644Z",
        "type": "REPLENISHMENT",
        "value": 2281,
        "name": "Wallet replenishment",
        "description": "external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh8sju0890a4rs75r0kt3b",
        "createdAt": "2022-07-18T08:20:41.994Z",
        "type": "BUY_ASSET",
        "value": 136818,
        "name": "Buy \"Welch - Jakubowski\"",
        "description": "get 31.04% equity",
        "annual": nil,
        "report": nil,
        "assetId": "cl5qh8r280869a4rsimfb7x14",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh8ohs0836a4rs9f3h6jmp",
        "createdAt": "2022-07-18T08:20:36.736Z",
        "type": "BUY_ASSET",
        "value": 20771,
        "name": "Buy \"Renner Inc\"",
        "description": "get 42.94% equity",
        "annual": nil,
        "report": nil,
        "assetId": "cl5qh8mzo0815a4rs70t10a6j",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh8kiy0782a4rscu12rt1y",
        "createdAt": "2022-07-18T08:20:31.594Z",
        "type": "BUY_ASSET",
        "value": 62779,
        "name": "Buy \"Pacocha, Bruen and Kshlerin\"",
        "description": "get 21.81% equity",
        "annual": nil,
        "report": nil,
        "assetId": "cl5qh8j0u0762a4rsn4gtayfe",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh8g5q0730a4rs3g6r21es",
        "createdAt": "2022-07-18T08:20:25.934Z",
        "type": "BUY_ASSET",
        "value": 265995,
        "name": "Buy \"Dare, Wunsch and Mosciski\"",
        "description": "get 35.83% equity",
        "annual": nil,
        "report": nil,
        "assetId": "cl5qh8dzp0710a4rs9iq90yiv",
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      },
      {
        "id": "cl5qh8av80684a4rszc4jehan",
        "createdAt": "2022-07-18T08:20:19.076Z",
        "type": "REPLENISHMENT",
        "value": 1000000,
        "name": "Start money!",
        "description": "Replenish external",
        "annual": nil,
        "report": nil,
        "assetId": nil,
        "walletId": "cl5qh7nfb0052a4rswtc4usrz"
      }]
  end

end
