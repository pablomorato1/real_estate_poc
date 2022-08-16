require Rails.root.join('lib', 'rails_admin', 'process_transaction.rb')
require Rails.root.join('lib', 'rails_admin', 'revert_transaction.rb')
RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::ProcessTransaction)
RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::RevertTransaction)

RailsAdmin.config do |config|
  config.asset_source = :sprockets

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Pundit ==
  # config.authorize_with :pundit

  config.authorize_with do
    redirect_to main_app.root_path, error: 'Não está autorizado' unless current_user.admin?
  end

  ## == PaperTrail ==
  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    process_transaction
    revert_transaction
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.excluded_models= [Wallet]
end
