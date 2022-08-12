class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :create_wallet


  enum role: %i[guest admin client]

  has_many :investments, inverse_of: :user
  has_one :wallet
  has_many :transactions, through: :wallet

  validates :name, :email, :password, presence: :true

  private

  def create_wallet
    wallet = Wallet.create
  end
end
