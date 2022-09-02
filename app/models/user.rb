class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :send_credentials_email
  after_create :create_wallet


  enum role: %i[guest admin client]

  has_one :wallet
  has_many :investments, inverse_of: :user
  has_many :transactions, through: :wallet

  validates :name, :email, presence: :true

  private

  def send_credentials_email
    UserMailer.with(user: self, password: self.password)
    .first_access.deliver_later
  end

  def create_wallet
    wallet = Wallet.create
  end
end
